class Course  < ApplicationRecord
 # has_and_belongs_to_many :students
   has_many :course_students
    has_many :students, through: :course_students

end
