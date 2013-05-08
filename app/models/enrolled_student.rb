class EnrolledStudent < ActiveRecord::Base
  belongs_to :roster
  attr_accessible :roster_id, :email, :name
end
