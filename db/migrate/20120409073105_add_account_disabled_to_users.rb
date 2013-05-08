class AddAccountDisabledToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :account_disabled, :boolean, :default => true
  end

  def self.down
    remove_column :users, :account_disabled
  end
end
