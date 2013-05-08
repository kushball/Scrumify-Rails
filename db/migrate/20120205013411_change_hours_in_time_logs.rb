class ChangeHoursInTimeLogs < ActiveRecord::Migration
  def self.up
    change_column :time_logs, :hours, :decimal, :precision => 3, :scale => 1
  end

  def self.down
    change_column :time_logs, :hours, :integer
  end
end