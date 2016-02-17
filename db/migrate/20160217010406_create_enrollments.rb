class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :courseid
      t.string :coursename
      t.string :instructor
      t.string :description
      t.string :studentname

      t.timestamps null: false
    end
  end
end
