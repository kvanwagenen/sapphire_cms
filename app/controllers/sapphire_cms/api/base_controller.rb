module SapphireCms
  module Api
    class BaseController < ApplicationController
      include DeviseTokenAuth::Concerns::SetUserByToken
      
      skip_before_action :verify_authenticity_token

      private

      def render_invalid_resource(resource)
        render json: resource.errors, status: :unprocessable_entity
      end
     
    end
  end
end