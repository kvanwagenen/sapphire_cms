module SapphireCms
  class NgControllerGenerator < Rails::Generators::Base

    desc "Creates a new angular controller at assets/javascripts/sapphire_cms/controllers"

    def create_ng_controller_file
      create_file "app/assets/javascripts/sapphire_cms/controllers/newController.coffee"
    end
  end
end