class AddDeputiesToGroup < ActiveRecord::Migration
  def self.up
    add_column :groups, :deputy_1, :integer
    add_column :groups, :deputy_2, :integer
  end

  def self.down
    remove_column :groups, :deputy_2
    remove_column :groups, :deputy_1
  end
end
