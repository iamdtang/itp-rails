class AddCourseIdToLectures < ActiveRecord::Migration[5.0]
  def change
    add_column :lectures, :course_id, :integer
  end
end
