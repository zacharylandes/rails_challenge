class Student < ApplicationRecord
  # has_and_belongs_to_many :courses
  has_many :addresses
  has_many :course_students
  has_many :courses, through: :course_students

end
