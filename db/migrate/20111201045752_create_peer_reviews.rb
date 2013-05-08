class CreatePeerReviews < ActiveRecord::Migration
  def self.up
    create_table :peer_reviews do |t|
      t.integer :user_id
      t.integer :reviewee_id
      t.integer :review_period_id
      t.integer :rating
      t.text :review
      t.timestamps
    end
  end

  def self.down
    drop_table :peer_reviews
  end
end
