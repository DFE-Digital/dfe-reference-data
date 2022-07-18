# frozen_string_literal: true

require_relative '../lib/http/hpack/huffman'

require 'set'

module Huffman
	BITS_AT_ONCE = HTTP::HPACK::Huffman::BITS_AT_ONCE
	EOS = 256

	class Node
		attr_accessor :next, :emit, :final, :depth
		attr_accessor :transitions
		attr_accessor :id
		@@id = 0 # rubocop:disable Style/ClassVars
		def initialize(depth)
			@next = [nil, nil]
			@id = @@id
			@@id += 1 # rubocop:disable Style/ClassVars
			@final = false
			@depth = depth
		end

		def add(code, len, chr)
			self.final = true if chr == EOS && @depth <= 7
			if len.zero?
				@emit = chr
			else
				bit = (code & (1 << (len - 1))).zero? ? 0 : 1
				node = @next[bit] ||= Node.new(@depth + 1)
				node.add(code, len - 1, chr)
			end
		end

		class Transition
			attr_accessor :emit, :node
			def initialize(emit, node)
				@emit = emit
				@node = node
			end
		end

		def self.generate_tree
			@root = new(0)
			HTTP::HPACK::Huffman::CODES.each_with_index do |c, chr|
				code, len = c
				@root.add(code, len, chr)
			end
			puts "#{@@id} nodes"
			@root
		end

		def self.generate_machine
			generate_tree
			togo = Set[@root]
			@states = Set[@root]

			until togo.empty?
				node = togo.first
				togo.delete(node)

				next if node.transitions
				node.transitions = Array[1 << BITS_AT_ONCE]

				(1 << BITS_AT_ONCE).times do |input|
					n = node
					emit = ''
					(BITS_AT_ONCE - 1).downto(0) do |i|
						bit = (input & (1 << i)).zero? ? 0 : 1
						n = n.next[bit]
						next unless n.emit
						if n.emit == EOS
							emit = EOS # cause error on decoding
						else
							emit << n.emit.chr(Encoding::BINARY) unless emit == EOS
						end
						n = @root
					end
					node.transitions[input] = Transition.new(emit, n)
					togo << n
					@states << n
				end
			end
			puts "#{@states.size} states"
			@root
		end

		def self.generate_state_table
			generate_machine
			state_id = {}
			id_state = {}
			state_id[@root] = 0
			id_state[0] = @root
			max_final = 0
			id = 1
			(@states - [@root]).sort_by {|s| s.final ? 0 : 1}.each do |s|
				state_id[s] = id
				id_state[id] = s
				max_final = id if s.final
				id += 1
			end

			File.open(File.expand_path('../lib/http/hpack/huffman/machine.rb', File.dirname(__FILE__)), 'w') do |f|
				f.print <<HEADER
# Copyright, 2019, by Samuel G. D. Williams. <http://www.codeotaku.com>
# Copyrigh, 2013, by Ilya Grigorik.
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Machine generated Huffman decoder state machine.
# DO NOT EDIT THIS FILE.

module Protocol
	module HPACK
		class Huffman
			# :nodoc:
			MAX_FINAL_STATE = #{max_final}
			MACHINE = [
HEADER
				id.times do |i|
					n = id_state[i]
					f.print "\t\t\t\t["
					string = (1 << BITS_AT_ONCE).times.map do |t|
						transition = n.transitions.fetch(t)
						emit = transition.emit
						unless emit == EOS
							bytes = emit.bytes
							fail ArgumentError if bytes.size > 1
							emit = bytes.first
						end
						"[#{emit.inspect}, #{state_id.fetch(transition.node)}]"
					end.join(', ')
					f.print(string)
					f.print "],\n"
				end
				f.print <<TAILER
			].each {|arr| arr.each {|subarr| subarr.each(&:freeze)}.freeze}.freeze
		end
	end
end
TAILER
			end
		end

		class << self
			attr_reader :root
		end

		# Test decoder
		def self.decode(input)
			emit = ''
			n = root
			nibbles = input.unpack('C*').flat_map {|b| [((b & 0xf0) >> 4), b & 0xf]}
			until nibbles.empty?
				nb = nibbles.shift
				t = n.transitions[nb]
				emit << t.emit
				n = t.node
			end
			unless n.final && nibbles.all? {|x| x == 0xf}
				puts "len = #{emit.size} n.final = #{n.final} nibbles = #{nibbles}"
			end
			emit
		end
	end
end
