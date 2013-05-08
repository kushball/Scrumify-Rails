class Membership < ActiveRecord::Base
  has_many :obligations, :dependent => :destroy
  belongs_to :user
  belongs_to :group
  
  attr_accessible :user_id, :group_id, :compatibility_score, :role
end
