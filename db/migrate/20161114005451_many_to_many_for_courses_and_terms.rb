class ManyToManyForCoursesAndTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_terms, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :term, index: true
    end

    remove_column :terms, :course_id
  end
end
