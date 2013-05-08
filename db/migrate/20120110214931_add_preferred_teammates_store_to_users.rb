class AddPreferredTeammatesStoreToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :preferred_teammates_store, :text
  end

  def self.down
    remove_column :users, :preferred_teammates_store
  end
end
