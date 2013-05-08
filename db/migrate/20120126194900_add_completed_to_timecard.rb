class AddCompletedToTimecard < ActiveRecord::Migration
  def self.up
    add_column :timecards, :completed, :boolean, :default => false
  end

  def self.down
    remove_column :timecards, :completed
  end
end
