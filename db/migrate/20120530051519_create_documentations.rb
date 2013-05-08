class CreateDocumentations < ActiveRecord::Migration
  def self.up
    create_table :documentations do |t|
      t.references :group
      t.references :user
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :documentations
  end
end
