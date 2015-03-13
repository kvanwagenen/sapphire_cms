class ReplaceSlugIndexOnContentBlocks < ActiveRecord::Migration
  def change
    remove_index :sapphire_cms_content_blocks, :slug
    add_index :sapphire_cms_content_blocks, [:slug, :version], unique: true
  end
end
