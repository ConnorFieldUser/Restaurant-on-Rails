class RemoveServedFromMenuitem < ActiveRecord::Migration[5.0]
  def change
    remove_column :menuitems, :served, :boolean
  end
end
