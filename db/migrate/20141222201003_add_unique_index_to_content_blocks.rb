class AddUniqueIndexToContentBlocks < ActiveRecord::Migration
  def change
    add_index :sapphire_cms_content_blocks, :slug, unique: true
  end
end
