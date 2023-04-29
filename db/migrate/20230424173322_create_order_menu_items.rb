class CreateOrderMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_menu_items do |t|
      t.integer :qty_ordered

      t.timestamps
    end
  end
end
