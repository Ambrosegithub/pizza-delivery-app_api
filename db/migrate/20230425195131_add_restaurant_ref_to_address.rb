class AddRestaurantRefToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :restaurant, null: false, foreign_key: true
  end
end
