class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.integer :delivery_fee
      t.integer :total_Amount
      t.date :requested_delivery_date

      t.timestamps
    end
  end
end
