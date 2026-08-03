RSpec.describe DfE::ReferenceData::Helpers::ConstantHashRewriter do
  def rewrite(source, constant_name:, inside:, replacement_source:)
    buffer = Parser::Source::Buffer.new("(source)")
    buffer.source = source
    ast = Parser::CurrentRuby.new.parse(buffer)
    rewriter = described_class.new(
      constant_name: constant_name,
      inside: inside,
      replacement_source: replacement_source
    )
    rewriter.rewrite(buffer, ast)
  end

  describe '#rewrite' do
    context 'when the constant is inside the matching module' do
      let(:source) do
        <<~RUBY
          module Foo
            MY_CONST = { old: :value }
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo', replacement_source: '{ new: :value }') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            MY_CONST = { new: :value }
          end
        RUBY
      end

      it 'replaces the constant value' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when the constant is inside a nested module namespace' do
      let(:source) do
        <<~RUBY
          module Foo
            module Bar
              MY_CONST = { old: :value }
            end
          end
        RUBY
      end

      context 'when namespace matches fully' do
        let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo::Bar', replacement_source: '42') }

        let(:rewriten_source) do
          <<~RUBY
            module Foo
              module Bar
                MY_CONST = 42
              end
            end
          RUBY
        end

        it 'replaces the constant value' do
          expect(result).to eq(rewriten_source)
        end
      end

      context 'when inside points to the outer module only' do
        let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo', replacement_source: '42') }

        let(:rewriten_source) do
          <<~RUBY
            module Foo
              module Bar
                MY_CONST = { old: :value }
              end
            end
          RUBY
        end

        it 'does not replace the constant' do
          expect(result).to eq(rewriten_source)
        end
      end
    end

    context 'when the constant is inside a class' do
      let(:source) do
        <<~RUBY
          module Foo
            class Bar
              MY_CONST = "old"
            end
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo::Bar', replacement_source: '"new"') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            class Bar
              MY_CONST = "new"
            end
          end
        RUBY
      end

      it 'replaces the constant value using the class as namespace' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when the constant name does not match' do
      let(:source) do
        <<~RUBY
          module Foo
            MY_CONST = { old: :value }
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :OTHER_CONST, inside: 'Foo', replacement_source: '42') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            MY_CONST = { old: :value }
          end
        RUBY
      end

      it 'does not replace anything' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when the namespace does not match' do
      let(:source) do
        <<~RUBY
          module Foo
            MY_CONST = { old: :value }
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Bar', replacement_source: '42') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            MY_CONST = { old: :value }
          end
        RUBY
      end

      it 'does not replace anything' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when the constant is a scoped assignment (e.g. Foo::MY_CONST = ...)' do
      let(:source) do
        <<~RUBY
          module Foo
            Bar::MY_CONST = { old: :value }
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo', replacement_source: '42') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            Bar::MY_CONST = { old: :value }
          end
        RUBY
      end

      it 'does not replace scoped constants' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when multiple constants exist in the same namespace' do
      let(:source) do
        <<~RUBY
          module Foo
            KEEP = "untouched"
            MY_CONST = { old: :value }
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo', replacement_source: '"replaced"') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            KEEP = "untouched"
            MY_CONST = "replaced"
          end
        RUBY
      end

      it 'replaces only the matching constant' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when the same constant exists in multiple namespaces' do
      let(:source) do
        <<~RUBY
          module Foo
            MY_CONST = "in foo"
            module Bar
              MY_CONST = "in foo bar"
            end
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo::Bar', replacement_source: '"replaced"') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            MY_CONST = "in foo"
            module Bar
              MY_CONST = "replaced"
            end
          end
        RUBY
      end

      it 'replaces only the constant in the specified namespace' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when constant_name is given as a string' do
      let(:source) do
        <<~RUBY
          module Foo
            MY_CONST = { old: :value }
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: 'MY_CONST', inside: 'Foo', replacement_source: '99') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            MY_CONST = 99
          end
        RUBY
      end

      it 'accepts a string and coerces it to a symbol' do
        expect(result).to eq(rewriten_source)
      end
    end

    context 'when preserving surrounding code outside the targeted constant' do
      let(:source) do
        <<~RUBY
          module Foo
            HEADER = "top"
            MY_CONST = { old: :value }
            FOOTER = "bottom"
          end
        RUBY
      end

      let(:result) { rewrite(source, constant_name: :MY_CONST, inside: 'Foo', replacement_source: '"new"') }

      let(:rewriten_source) do
        <<~RUBY
          module Foo
            HEADER = "top"
            MY_CONST = "new"
            FOOTER = "bottom"
          end
        RUBY
      end

      it 'preserves surrounding code outside the targeted constant' do
        expect(result).to eq(rewriten_source)
      end
    end
  end
end
