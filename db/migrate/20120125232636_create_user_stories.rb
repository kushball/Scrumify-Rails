class CreateUserStories < ActiveRecord::Migration
  def self.up
    create_table :user_stories do |t|
      t.string :actor
      t.text :goal
      t.references :group
      t.timestamps
    end
  end

  def self.down
    drop_table :user_stories
  end
end
