class CreateRoles < ActiveRecord::Migration
  def change
    create_table :sapphire_cms_roles do |t|
      t.string :name
    end
  end
end
