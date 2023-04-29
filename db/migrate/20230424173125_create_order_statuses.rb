class CreateOrderStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :order_statuses do |t|
      t.text :status_option
      t.boolean :active
      t.boolean :pending
      t.boolean :completed

      t.timestamps
    end
  end
end
