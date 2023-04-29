class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_Name
      t.boolean :is_verified
      t.boolean :in_holiday
      t.date :re_open_date

      t.timestamps
    end
  end
end
