module SapphireCms
  class NgTemplateGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_template_file
      copy_file "template.html.slim", "app/assets/templates/#{name}.html.slim"
    end
  end
end
