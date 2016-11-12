class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.integer :lecture_id
      t.string :link
      t.text :body
      t.timestamps
    end
  end
end
