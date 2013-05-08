class DataField < ActiveRecord::Base
  belongs_to :custom_field
  has_many :data_field_steps
  accepts_nested_attributes_for :data_field_steps, :reject_if => lambda { |a| a[:body].blank? }, :allow_destroy => true
  attr_accessible :custom_field_id, :body, :documentation_id

  def div
    "ucsd" + self.id.to_s + "_data_fields"
  end
end
