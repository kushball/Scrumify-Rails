class AddDefaultToTimecards < ActiveRecord::Migration
  def self.up
    change_column_default :timecards, :completed, false
  end

  def self.down
    change_column_default :timecards, :completed
  end
end