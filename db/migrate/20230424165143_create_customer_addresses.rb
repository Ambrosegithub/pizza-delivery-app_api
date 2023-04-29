class CreateCustomerAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_addresses do |t|

      t.timestamps
    end
  end
end
