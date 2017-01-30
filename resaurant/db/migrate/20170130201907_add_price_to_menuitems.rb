class AddPriceToMenuitems < ActiveRecord::Migration[5.0]
  def change
    add_column :menuitems, :price, :decimal
  end
end
