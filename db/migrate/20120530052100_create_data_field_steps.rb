class CreateDataFieldSteps < ActiveRecord::Migration
  def self.up
    create_table :data_field_steps do |t|
      t.references :data_field
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :data_field_steps
  end
end
