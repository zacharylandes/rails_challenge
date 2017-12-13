class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.references :student, foreign_key: true
    end
  end
end
