module SapphireCms
  class ContentBlock < ActiveRecord::Base
    def layout_block
      if @layout_block.nil?
        @layout_block = ContentBlock.find_by_slug(layout_block_slug)
      end
      @layout_block
    end

    def layout_block= block
      self.layout_block_slug = block.slug
      @layout_block = block
    end
  end
end
