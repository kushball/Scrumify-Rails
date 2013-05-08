class CreateObligations < ActiveRecord::Migration
  def self.up
    create_table :obligations do |t|
      t.integer :user_id
      t.integer :membership_id
      t.integer :role_id
      t.timestamps
    end
  end

  def self.down
    drop_table :obligations
  end
end
