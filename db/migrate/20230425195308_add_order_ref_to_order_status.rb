class AddOrderRefToOrderStatus < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_statuses, :order, null: false, foreign_key: true
  end
end
