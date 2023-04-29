class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :menu_item_name
      t.integer :price
      t.string :menu_item_img

      t.timestamps
    end
  end
end
