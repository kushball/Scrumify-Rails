class CreateDeviations < ActiveRecord::Migration
  def self.up
    create_table :deviations do |t|
      t.text :body
      t.references :use_case
      t.timestamps
    end
  end

  def self.down
    drop_table :deviations
  end
end
