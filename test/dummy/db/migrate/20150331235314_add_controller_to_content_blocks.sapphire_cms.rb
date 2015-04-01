# This migration comes from sapphire_cms (originally 20150331175054)
class AddControllerToContentBlocks < ActiveRecord::Migration
  def change
    add_column :sapphire_cms_content_blocks, :controller, :string, default: nil
  end
end
