class CreateChargeNumbers < ActiveRecord::Migration
  def self.up
    create_table :charge_numbers do |t|
      t.integer :group_id
      t.string :name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :charge_numbers
  end
end
