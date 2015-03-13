class ReplaceLayoutBlockIdWithSlug < ActiveRecord::Migration
  def change
    remove_column :sapphire_cms_content_blocks, :layout_block_id, :integer
    add_column :sapphire_cms_content_blocks, :layout_block_slug, :string, default: nil
  end
end
