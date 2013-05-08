class CreateEnrolledStudents < ActiveRecord::Migration
  def self.up
    create_table :enrolled_students do |t|
      t.integer :roster_id
      t.string :email
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :enrolled_students
  end
end
