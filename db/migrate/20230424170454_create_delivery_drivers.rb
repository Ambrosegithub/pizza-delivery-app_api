class CreateDeliveryDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_drivers do |t|
      t.string :img_profile
      t.string :first_Name
      t.string :last_Name
      t.text :delivery_method
      t.text :licence_type
      t.string :licence_img

      t.timestamps
    end
  end
end
