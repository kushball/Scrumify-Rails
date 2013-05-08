class AddCompletedToPeerReviews < ActiveRecord::Migration
  def self.up
    add_column :peer_reviews, :completed, :boolean, :default => false
  end

  def self.down
    remove_column :peer_reviews, :completed
  end
end
