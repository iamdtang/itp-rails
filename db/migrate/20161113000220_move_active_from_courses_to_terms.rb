class MoveActiveFromCoursesToTerms < ActiveRecord::Migration[5.0]
  def change
    add_column :terms, :active, :boolean, :default => false
    remove_column :courses, :active
  end
end
