class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :user, through: :enrollments
  # validates_presence_of :course_id
  # validates_uniqueness_of :course_id
  # validates_presence_of :start_date
  # validates_presence_of :end_date
end
