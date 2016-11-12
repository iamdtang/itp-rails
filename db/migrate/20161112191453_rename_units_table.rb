class RenameUnitsTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :units, :resources
  end
end
