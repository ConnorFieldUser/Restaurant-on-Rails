class RemoveReadyFromMenuitem < ActiveRecord::Migration[5.0]
  def change
    remove_column :menuitems, :ready, :boolean
  end
end
