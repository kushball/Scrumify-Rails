class DataFieldStep < ActiveRecord::Base
  belongs_to :data_field
  attr_accessible :data_field_id, :body


  def div
    "ucsd" + self.id.to_s + "_data_fields"
  end
end
