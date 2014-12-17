class CreateSapphireCmsContentBlocks < ActiveRecord::Migration
  def change
    create_table :sapphire_cms_content_blocks do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
  end
end
