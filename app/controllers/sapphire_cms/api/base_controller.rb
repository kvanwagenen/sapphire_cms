module SapphireCms
  module Api
    class BaseController < ApplicationController
      before_action :ensure_user_authenticated

      private

      def render_invalid_resource(resource)
        render json: resource.errors, status: :unprocessable_entity
      end

      def ensure_user_authenticated
        if !Rails.configuration.sapphire_cms.authenticated? request
          redirect_to Rails.configuration.sapphire_cms.authenticate_url
        end
      end
      
    end
  end
end