class CreateCustomForms < ActiveRecord::Migration
  def self.up
    create_table :custom_forms do |t|
      t.references :group
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :custom_forms
  end
end
