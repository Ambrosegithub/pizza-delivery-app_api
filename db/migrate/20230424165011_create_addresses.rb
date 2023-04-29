class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.text :region
      t.text :province
      t.text :unit_number
      t.text :street_Number
      t.text :street_Name
      t.text :city
      t.text :posta_code

      t.timestamps
    end
  end
end
