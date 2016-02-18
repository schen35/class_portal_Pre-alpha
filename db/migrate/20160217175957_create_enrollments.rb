class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :Student_ID
      t.integer :Instructor_ID
      t.integer :Course_ID
      t.float :Grade
      t.text :Material
      t.boolean :Admission

      t.timestamps null: false
    end
  end
end
