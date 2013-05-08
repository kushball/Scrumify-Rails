class Task < ActiveRecord::Base
	belongs_to :user
	belongs_to :story
	belongs_to :state
	
  attr_accessible :story_id, :name, :description, :user_id, :state_id, :points

	validates_presence_of :name
end
