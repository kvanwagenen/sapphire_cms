# desc "Copies angular template files to the public directory so they can be served to clients"
namespace :sapphire_cms do
  task :install_ng_templates do
    assets_path = File.join(Rails.root, "public/assets")

    # Copy files
    FileUtils.cp_r(File.expand_path("../../../app/assets/templates/.", __FILE__).to_s + "/.", assets_path)

    # Compile any Slim templates to html
    Dir[File.join(assets_path, "/**/*.slim")].each do |filename|
      dir = File.dirname(filename)
      out_name = File.join(dir, File.basename(filename, ".slim"))
      system "slimrb #{filename} > #{out_name}"
      FileUtils.rm(filename)
    end
  end
end
