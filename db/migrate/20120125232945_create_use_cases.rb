class CreateUseCases < ActiveRecord::Migration
  def self.up
    create_table :use_cases do |t|
      t.string :title
      t.text :success_scenario
      t.references :group
      t.timestamps
    end
  end

  def self.down
    drop_table :use_cases
  end
end
