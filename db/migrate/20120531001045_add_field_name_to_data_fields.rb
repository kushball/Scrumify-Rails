class AddFieldNameToDataFields < ActiveRecord::Migration
  def self.up
    add_column :data_fields, :field_name, :string
  end

  def self.down
    remove_column :data_fields, :field_name
  end
end
