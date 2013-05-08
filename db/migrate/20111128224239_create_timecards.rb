class CreateTimecards < ActiveRecord::Migration
  def self.up
    create_table :timecards do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :timecard_period_id
      t.string :issues
      t.string :todo
      t.string :done
      t.string :risks
      t.timestamps
    end
  end

  def self.down
    drop_table :timecards
  end
end
