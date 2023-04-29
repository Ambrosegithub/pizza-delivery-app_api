class AddDeliveryDriverRefToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :delivery_driver, null: false, foreign_key: true
  end
end
