class Documentation < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  has_many :data_fields
  accepts_nested_attributes_for :data_fields, :allow_destroy => true  
  attr_accessible :name, :group_id, :user_id, :custom_form_id, :data_fields_attributes 

  def build_data_fields
    custom_fields = CustomField.where(:custom_form_id => self.custom_form_id)
    for cf in custom_fields
      df = self.data_fields.build
      df.custom_field_id = cf.id
      df.field_name = cf.name
    end
  end

  def kill_data_fields
    data_fields = self.data_fields
    for df in data_fields
      df.delete
    end
  end
end
