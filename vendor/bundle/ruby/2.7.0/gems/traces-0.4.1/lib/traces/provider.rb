# frozen_string_literal: true

# Copyright, 2021, by Samuel G. D. Williams. <http://www.codeotaku.com>
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

require_relative 'backend'

module Traces
	# A module which contains tracing specific wrappers.
	module Provider
		def traces_provider
			@traces_provider ||= Module.new
		end
	end
	
	# Bail out if there is no backend configured.
	if self.const_defined?(:Backend)
		# Extend the specified class in order to emit traces.
		def self.Provider(klass, &block)
			klass.extend(Provider)
			
			provider = klass.traces_provider
			provider.prepend(Backend::Interface)
			
			klass.prepend(provider)
			
			provider.module_exec(&block)
		end
	else
		def self.Provider(klass, &block)
			# Tracing disabled.
		end
	end
end
