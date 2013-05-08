class AddDocumentationReferenceToDataFields < ActiveRecord::Migration
  def self.up
    add_column :data_fields, :documentation_id, :integer
  end

  def self.down
    remove_column :data_fields, :documentation_id
  end
end
