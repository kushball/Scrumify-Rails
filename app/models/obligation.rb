class Obligation < ActiveRecord::Base
  belongs_to :user
  belongs_to :membership
  belongs_to :role
  
  attr_accessible :user_id, :membership_id, :role_id
end
