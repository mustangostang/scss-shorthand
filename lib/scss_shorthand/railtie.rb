require 'sprockets/railtie'

module ScssShorthand::Rails
  class Railtie < ::Rails::Railtie

    config.before_initialize do |app|
      if app.config.assets.enabled
        require 'sprockets'
        require "scss_shorthand/template"
        Sprockets::Engines #force autoloading
        Sprockets.register_engine '.scss', ScssShorthand::Template
      end
    end


  end
end