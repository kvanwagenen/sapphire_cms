require 'slim-rails'

module SapphireCms
  class Engine < ::Rails::Engine
    isolate_namespace SapphireCms

    Rabl.configure do |config|
      config.include_json_root = false
      config.include_child_root = false
    end

    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "sapphire_cms.assets.configure" do |app|
      assets = Rails.application.assets
      assets.register_mime_type 'text/html', '.html'
      assets.register_engine '.slim', ::Slim::Template
      Rails.application.config.assets.precompile += %w( bootstrap/* )
    end

  end
end
