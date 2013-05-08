class PeerReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :reviewee, :class_name => "User", :foreign_key => "reviewee_id"
  belongs_to :review_period
  
  attr_accessible :user_id, :reviewee_id, :review_period_id, :rating, :review, :completed
  
  validates :user_id,           :presence => true, :on => :update
  validates :reviewee_id,       :presence => true, :on => :update
  validates :review_period_id,  :presence => true, :on => :update
  validates :rating,            :presence => true, :on => :update
  validates :review,            :presence => true, :on => :update
end
