class AddRestaurantRefToRestaurantMenuItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :restaurant_menu_items, :restaurant, null: false, foreign_key: true
    add_reference :restaurant_menu_items, :menu_item, null: false, foreign_key: true
  end
end
