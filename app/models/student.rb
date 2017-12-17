class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  has_many :addresses, foreign_key: "course_id"
  # has_many :courses_student
  # has_many :courses, through: :courses_student

end
