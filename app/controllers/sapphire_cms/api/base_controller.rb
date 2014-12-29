module SapphireCms
  module Api
    class BaseController < ApplicationController
      before_action :ensure_user_authenticated
    end
  end
end