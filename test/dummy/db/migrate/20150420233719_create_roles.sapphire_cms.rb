# This migration comes from sapphire_cms (originally 20150420233332)
class CreateRoles < ActiveRecord::Migration
  def change
    create_table :sapphire_cms_roles do |t|
      t.string :name
    end
  end
end
