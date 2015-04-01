module SapphireCms
  module Api
    class ContentBlocksController < BaseController
      respond_to :json
      before_action :wrap_parameters

      def index
        @params = @params.permit(:slug, :includeUnpublished)
        if @params[:slug]
          @blocks = ContentBlock.where(@params.permit(:slug))
        else
          @blocks = ContentBlock.all
        end
        if @params[:includeUnpublished] && @params[:includeUnpublished] == "false"
          @blocks = @blocks.where(status: "published")
        end
        @blocks = @blocks.order('version DESC')
        respond_with @blocks
      end

      def create
        @block = ContentBlock.new(@params.permit(:title, :body, :slug, :layout_block_slug, :status, :version, :precache, :controller))
        ensure_valid_update @block do
          ensure_unique do
            success = @block.save
            if success
              render :show, status: :created, location: api_content_block_url(@block)
            else
              render_invalid_resource(@block)
            end    
          end
        end        
      end

      def update
        @block = ContentBlock.find(@params.permit(:id)[:id])
        ensure_valid_update @block do
          ensure_unique do
            if @block.update_attributes(@params.permit(:title, :body, :slug, :layout_block_slug, :status, :version, :precache, :controller))
              render :show, status: :ok
            else
              render_invalid_resource(@block)
            end
          end
        end
      end

      def show
        begin
          @block = ContentBlock.find(params[:id])
          respond_with @block
        rescue ActiveRecord::RecordNotFound
          render_error "Block with id #{params[:id]} not found.", :not_found
        end
      end

      def destroy
        @block = ContentBlock.find(@params.permit(:id)[:id])
        ensure_valid_update(@block) do
          @block.destroy
          render :show, status: :ok
        end
      end

      def routes
        render json: view_context.route_manifest # Lives in client_helper
      end

      private

      def wrap_parameters
        @params = ActionController::Parameters.new(params)
      end

      def render_error(msg, status=:unprocessable_entity)
        render json: msg, status: status
      end

      def ensure_unique
        begin
          yield
        rescue ActiveRecord::RecordNotUnique => e
          render_error "A block with the given slug already exists."
        end
      end

      def ensure_valid_update(resource)
        begin
          yield
        rescue Exception => e
          render_invalid_resource(resource)
        end
      end
    end
  end
end