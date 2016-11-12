class AddBodyToLectures < ActiveRecord::Migration[5.0]
  def change
    add_column :lectures, :body, :text
  end
end
