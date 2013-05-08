class CustomForm < ActiveRecord::Base
  belongs_to :group
  has_many :custom_fields
  accepts_nested_attributes_for :custom_fields, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
  attr_accessible :group_id, :name, :custom_fields_attributes

  def documentations
    Documentation.where(:custom_form_id => self.id)
  end
end
