require "sass-rails"

module ScssShorthand
    class Template < Sass::Rails::ScssTemplate

        def prepare

        end

        def evaluate(scope, locals, &block)
          data.gsub!('++', '@include ')
          data.gsub!('>>', '@extend ')
          Sass::Engine.new(data, sass_options(scope)).render
        end

    end

end