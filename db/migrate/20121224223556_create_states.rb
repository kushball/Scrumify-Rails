class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :name
      t.integer :statable_id
			t.string :statable_type
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
