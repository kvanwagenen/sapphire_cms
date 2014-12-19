module SapphireCms
  module Api
    class ContentBlocksController < ApplicationController
      respond_to :json

      def index
        @blocks = ContentBlock.all
        respond_with @blocks
      end

      def create
        @block = ContentBlock.create(params[:content_block])
        respond_with @block, default_template: :show
      end

      def update

      end

      def show
        @block = ContentBlock.find(params[:id])
        respond_with @block
      end

      def destroy

      end
    end
  end
end