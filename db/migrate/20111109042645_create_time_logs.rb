class CreateTimeLogs < ActiveRecord::Migration
  def self.up
    create_table :time_logs do |t|
      t.integer :timecard_id
      t.string :day
      t.integer :charge_number_id
      t.integer :hours
      t.boolean :actual
      t.timestamps
    end
  end

  def self.down
    drop_table :time_logs
  end
end
