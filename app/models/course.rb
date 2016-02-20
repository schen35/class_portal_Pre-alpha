class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :user, through: :enrollments
  def self.search(search)
    if search
      self.where('"courses"."Title" LIKE ?', "%#{search}%")
    else
      self.all
    end

  end

end
