class CreateMenuitems < ActiveRecord::Migration[5.0]
  def change
    create_table :menuitems do |t|
      t.string :name
      t.text :description
      t.boolean :ready
      t.boolean :served

      t.timestamps
    end
  end
end
