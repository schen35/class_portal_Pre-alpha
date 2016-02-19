class Course < ActiveRecord::Base
  def self.search(search)
    where("course_num LIKE ?", "%#{search}%")
    where("title LIKE ?", "%#{search}%")
  end
end
