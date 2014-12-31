module SapphireCms
  class ContentBlock < ActiveRecord::Base
  	belongs_to :layout_block, class_name: "SapphireCms::ContentBlock", foreign_key: :layout_block_id

  	def page
  		if layout_block
  			layout_block.page.gsub('<sp-yield></sp-yield>', body)
  		else
  			body
  		end
  	end
  end
end
