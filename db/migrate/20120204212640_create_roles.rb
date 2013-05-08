class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.integer :group_id
      t.string :name
      t.text :description
      t.string :icon
      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
