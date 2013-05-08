class Story < ActiveRecord::Base
	has_many :tasks, :dependent => :destroy
	belongs_to :group
	
  attr_accessible :name, :description, :start_date, :end_date, :group_id

	validates_presence_of :name
	validates_presence_of :group_id
	
	def completed_tasks
		self.tasks.where(:state_id => State.first)
	end
	
	def completed_points
		completed_tasks.sum('points')
	end
end
