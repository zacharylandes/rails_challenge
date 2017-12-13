class RemoveCourseIdFromCoursesStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses_students, :course_id, :integer
  end
end
