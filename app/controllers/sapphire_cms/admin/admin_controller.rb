module SapphireCms
  module Admin
    class AdminController < ApplicationController
      layout "sapphire_cms/admin"

      def index
        
      end

      private

      def render_invalid_resource(resource)
        render json: resource.errors, status: :unprocessable_entity
      end
    end
  end
end