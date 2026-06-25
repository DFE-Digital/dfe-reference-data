RSpec.describe DfE::ReferenceData::Helpers::RubyHashLiteral do
  subject(:instance) { described_class.new }

  describe '.call' do
    it 'appends .freeze to the result' do
      expect(described_class.call({})).to eq('{}.freeze')
    end

    it 'converts a non-empty hash and appends .freeze' do
      result = described_class.call({ name: 'Alice' })
      expect(result).to start_with('{')
      expect(result).to end_with('.freeze')
    end
  end

  describe '#call' do
    context 'with scalar types' do
      it 'converts a String' do
        expect(instance.call('hello')).to eq('"hello"')
      end

      it 'converts a Symbol' do
        expect(instance.call(:foo)).to eq(':foo')
      end

      it 'converts an Integer' do
        expect(instance.call(42)).to eq('42')
      end

      it 'converts a Float' do
        expect(instance.call(3.14)).to eq('3.14')
      end

      it 'converts a Rational' do
        expect(instance.call(Rational(3, 4))).to eq('(3/4)')
      end

      it 'converts true' do
        expect(instance.call(true)).to eq('true')
      end

      it 'converts false' do
        expect(instance.call(false)).to eq('false')
      end

      it 'converts nil' do
        expect(instance.call(nil)).to eq('nil')
      end
    end

    context 'with a DateTime' do
      it 'formats as DateTime.new(year, month, day)' do
        expect(instance.call(DateTime.new(2024, 11, 25))).to eq('DateTime.new(2024, 11, 25)')
      end

      it 'omits leading zeros from month and day' do
        expect(instance.call(DateTime.new(2024, 3, 5))).to eq('DateTime.new(2024, 3, 5)')
      end
    end

    context 'with an unsupported type' do
      it 'raises ArgumentError' do
        expect { instance.call(Object.new) }.to raise_error(ArgumentError, /Cannot convert Object/)
      end
    end

    context 'with a Hash' do
      context 'when empty' do
        it 'returns "{}"' do
          expect(instance.call({}, 0)).to eq('{}')
        end
      end

      context 'with a simple lowercase symbol key' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            {
              name: "Alice"
            }
          RUBY
        end

        it 'uses the bare symbol key syntax' do
          expect(instance.call({ name: 'Alice' }, 0)).to eq(rewriten_source)
        end
      end

      context 'with symbol keys that start with an uppercase letter' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            {
              :Foo => "bar"
            }
          RUBY
        end

        it 'uses the hash rocket syntax' do
          expect(instance.call({ Foo: 'bar' }, 0)).to eq(rewriten_source)
        end
      end

      context 'with string keys' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            {
              "key" => "value"
            }
          RUBY
        end

        it 'uses the hash rocket syntax' do
          expect(instance.call({ 'key' => 'value' }, 0)).to eq(rewriten_source)
        end
      end

      context 'with integer keys' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            {
              1 => "one"
            }
          RUBY
        end

        it 'uses the hash rocket syntax' do
          expect(instance.call({ 1 => 'one' }, 0)).to eq(rewriten_source)
        end
      end

      context 'with multiple entries' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            {
              first: "Alice",
              second: "Bob"
            }
          RUBY
        end

        it 'separates entries with commas' do
          expect(instance.call({ first: 'Alice', second: 'Bob' }, 0)).to eq(rewriten_source)
        end
      end

      context 'with a nested hash value' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            {
              outer: {
                inner: "value"
              }
            }
          RUBY
        end

        it 'indents the nested hash one level deeper' do
          expect(instance.call({ outer: { inner: 'value' } }, 0)).to eq(rewriten_source)
        end
      end

      context 'with a DateTime value' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            {
              date: DateTime.new(2024, 6, 1)
            }
          RUBY
        end

        it 'formats DateTime values inline' do
          expect(instance.call({ date: DateTime.new(2024, 6, 1) }, 0)).to eq(rewriten_source)
        end
      end
    end

    context 'with an Array' do
      context 'when empty' do
        it 'returns "[]"' do
          expect(instance.call([], 0)).to eq('[]')
        end
      end

      context 'with scalar elements' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            [
              "Alice",
              "Bob"
            ]
          RUBY
        end

        it 'formats each element on its own line' do
          expect(instance.call(['Alice', 'Bob'], 0)).to eq(rewriten_source)
        end
      end

      context 'with a nested array' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            [
              [
                1,
                2
              ]
            ]
          RUBY
        end

        it 'indents the nested array one level deeper' do
          expect(instance.call([[1, 2]], 0)).to eq(rewriten_source)
        end
      end

      context 'with hash elements' do
        let(:rewriten_source) do
          <<~RUBY.chomp
            [
              {
                name: "Alice"
              }
            ]
          RUBY
        end

        it 'formats hash elements with correct indentation' do
          expect(instance.call([{ name: 'Alice' }], 0)).to eq(rewriten_source)
        end
      end
    end
  end
end
