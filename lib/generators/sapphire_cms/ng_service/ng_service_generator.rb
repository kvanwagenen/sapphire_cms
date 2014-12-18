require 'erb'

class SapphireCms::NgServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_template
    template_file_name = "ng_service.coffee.erb"
    template_file = File.open(File.expand_path("../templates/#{template_file_name}", __FILE__), "r")
    template_file_contents = template_file.read
    template_file.close
    file_content = ERB.new(template_file_contents).result(self)
    out_file = File.open("app/assets/javascripts/sapphire_cms/services/#{name}.coffee", "w")
    out_file.write file_content
    out_file.close
    # copy_file "ng_service.coffee", "app/assets/javascripts/sapphire_cms/services/#{name}.coffee"
  end
end
