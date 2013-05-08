class CreateTimecardPeriods < ActiveRecord::Migration
  def self.up
    create_table :timecard_periods do |t|
      t.string :name
      t.date :actual_starts_on
      t.date :actual_ends_on
      t.date :estimate_starts_on
      t.date :estimate_ends_on
      t.timestamps
    end
  end

  def self.down
    drop_table :timecard_periods
  end
end
