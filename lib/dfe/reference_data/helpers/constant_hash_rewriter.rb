require "parser/current"
require "parser/source/tree_rewriter"

module DfE
  module ReferenceData
    module Helpers
      class ConstantHashRewriter < Parser::TreeRewriter
        def initialize(constant_name:, inside:, replacement_source:)
          super()
          @constant_name = constant_name.to_sym
          @inside = inside.to_s
          @replacement_source = replacement_source
          @namespace = []
        end

        def on_module(node)
          name_node, _body_node = *node

          with_namespace(name_node) do
            super
          end
        end

        def on_class(node)
          name_node, _superclass_node, _body_node = *node

          with_namespace(name_node) do
            super
          end
        end

        def on_casgn(node)
          scope_node, name, value_node = *node

          return super unless current_namespace == @inside
          return super unless scope_node.nil?
          return super unless name == @constant_name
          return super unless value_node

          replace(value_node.loc.expression, @replacement_source)

          super
        end

        private

        def with_namespace(name_node)
          @namespace.push(const_name(name_node))
          yield
        ensure
          @namespace.pop
        end

        def current_namespace
          @namespace.join("::")
        end

        def const_name(node)
          case node.type
          when :const
            scope_node, name = *node

            if scope_node
              "#{const_name(scope_node)}::#{name}"
            else
              name.to_s
            end
          else
            raise ArgumentError, "Unsupported namespace node: #{node.type}"
          end
        end
      end
    end
  end
end
