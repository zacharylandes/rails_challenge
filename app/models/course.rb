class Course  < ApplicationRecord
 has_and_belongs_to_many :students,
 class_name: "Student"
end
