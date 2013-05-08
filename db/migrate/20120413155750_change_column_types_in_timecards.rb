class ChangeColumnTypesInTimecards < ActiveRecord::Migration
  def self.up
    change_column :timecards, :issues, :text
    change_column :timecards, :todo, :text
    change_column :timecards, :done, :text
    change_column :timecards, :risks, :text
  end

  def self.down
    change_column :timecards, :issues, :string
    change_column :timecards, :todo, :string
    change_column :timecards, :done, :string
    change_column :timecards, :risks, :string
  end
end
