class AddDueOnToTimecardPeriods < ActiveRecord::Migration
  def self.up
    add_column :timecard_periods, :due_on, :datetime
  end

  def self.down
    remove_column :timecard_periods, :due_on
  end
end
