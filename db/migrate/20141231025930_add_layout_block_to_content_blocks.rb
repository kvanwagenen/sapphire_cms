class AddLayoutBlockToContentBlocks < ActiveRecord::Migration
	def change
		add_column :sapphire_cms_content_blocks, :layout_block_id, :integer, default: nil
	end
end