class AddCustomFormReferenceToDocumentations < ActiveRecord::Migration
  def self.up
    add_column :documentations, :custom_form_id, :integer
  end

  def self.down
    remove_column :documentations, :custom_form_id
  end
end
