class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :Course_num
      t.string :Title
      t.text :Description
      t.string :Instructor
      t.date :Start_date
      t.date :End_date
      t.boolean :Status

      t.timestamps null: false
    end
    add_index :courses, :Course_num, unique: true
  end
end
