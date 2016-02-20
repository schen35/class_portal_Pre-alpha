class Course < ActiveRecord::Base
  has_and_belongs_to_many :enrollments,association_foreign_key: :course_id
  has_many :user, through: :enrollments
  # validates_presence_of :course_id
  # validates_uniqueness_of :course_id
  # validates_presence_of :start_date
  # validates_presence_of :end_date
end
