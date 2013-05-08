class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :group_id
      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
