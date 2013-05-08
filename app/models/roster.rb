class Roster < ActiveRecord::Base
  has_many :enrolled_students, :dependent => :destroy
  attr_accessible :name
end
