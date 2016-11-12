class UpdateResourcesColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :resources, :body
    add_column :resources, :link_title, :string
  end
end
