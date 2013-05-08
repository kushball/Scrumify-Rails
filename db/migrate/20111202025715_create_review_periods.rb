class CreateReviewPeriods < ActiveRecord::Migration
  def self.up
    create_table :review_periods do |t|
      t.string :name
      t.date :starts_on
      t.date :ends_on
      t.timestamps
    end
  end

  def self.down
    drop_table :review_periods
  end
end
