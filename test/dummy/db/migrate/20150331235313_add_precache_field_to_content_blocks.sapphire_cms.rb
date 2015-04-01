# This migration comes from sapphire_cms (originally 20150330190747)
class AddPrecacheFieldToContentBlocks < ActiveRecord::Migration
  def change
    add_column :sapphire_cms_content_blocks, :precache, :boolean, default: false
  end
end
