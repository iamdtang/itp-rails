class CreateManyToManyRelationshipForLecturesAndResources < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures_resources, id: false do |t|
      t.belongs_to :lecture, index: true
      t.belongs_to :resource, index: true
    end

    remove_column :resources, :lecture_id
  end
end
