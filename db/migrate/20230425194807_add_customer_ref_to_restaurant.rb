class AddCustomerRefToRestaurant < ActiveRecord::Migration[7.0]
  def change
    add_reference :restaurants, :customer, null: false, foreign_key: true
  end
end
