module SapphireCms
  module Admin
    class AdminController < ApplicationController
      before_action :ensure_user_authenticated

      def index
        
      end

    end
  end
end