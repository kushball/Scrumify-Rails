class State < ActiveRecord::Base
	has_many :tasks
  attr_accessible :name, :description
end
