class CreateDataFields < ActiveRecord::Migration
  def self.up
    create_table :data_fields do |t|
      t.references :custom_field
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :data_fields
  end
end
