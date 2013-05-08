class AddTutorToUsers < ActiveRecord::Migration
  def self.up
		add_column :users, :tutor, :boolean, :default => false
  end

  def self.down
		remove_column :users, :tutor
  end
end