class CreateRestaurantMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_menu_items do |t|

      t.timestamps
    end
  end
end
