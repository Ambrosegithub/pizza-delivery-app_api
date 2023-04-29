class AddRestaurantRefToRating < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :restaurant, null: false, foreign_key: true
  end
end
