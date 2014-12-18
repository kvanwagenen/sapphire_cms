module SapphireCms
  module Api
    class ContentBlocksController < ApplicationController

      respond_to :json

      def index
        respond_with ContentBlock.all
      end

      def show

      end

    end
  end
end