# desc "Copies angular template files to the public directory so they can be served to clients"
namespace :sapphire_cms do
  task :install_ng_templates do
    templates_path = File.join(Rails.root, "public/assets/templates")
    if File.exist?(templates_path)
      FileUtils.rm_r(templates_path)
    end
    FileUtils.mkdir_p(templates_path)
    FileUtils.cp_r(File.expand_path("../../../app/assets/templates/", __FILE__), File.expand_path("../", templates_path))
  end
end
