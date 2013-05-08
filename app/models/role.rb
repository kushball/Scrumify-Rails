class Role < ActiveRecord::Base
  has_many :obligations, :dependent => :destroy
  has_one :user, :through => :obligations
  belongs_to :group
  
  attr_accessible :group_id, :name, :description, :icon
  attr_accessor :user_id
  
  #mount_uploader :icon, RoleIconUploader
  
  validates :name, :presence => true
  #validates :icon, :file_size => { :maximum => 0.5.megabytes.to_i }
end
