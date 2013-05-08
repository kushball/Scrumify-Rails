class CustomField < ActiveRecord::Base
  belongs_to :custom_form
  has_many :data_fields
  accepts_nested_attributes_for :data_fields, :reject_if => lambda { |a| a[:body].blank? }, :allow_destroy => true
  attr_accessible :custom_form_id, :name, :complex, :data_fields_attributes
end
