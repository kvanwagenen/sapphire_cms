# This migration comes from sapphire_cms (originally 20141231025930)
class AddLayoutBlockToContentBlocks < ActiveRecord::Migration
	def change
		add_column :sapphire_cms_content_blocks, :layout_block_id, :integer, default: nil
	end
end