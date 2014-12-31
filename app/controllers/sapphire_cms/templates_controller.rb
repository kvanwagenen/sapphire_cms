module SapphireCms
  class TemplatesController < ApplicationController
  	layout "sapphire_cms/bare"
    
    def show
    	@block = SapphireCms::ContentBlock.find_by_slug(request.path[root_path.length..-1])
    end
  
  end
end