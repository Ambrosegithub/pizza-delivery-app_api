class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_Name
      t.string :last_Name
      t.text :tel
      t.text :email
      t.text :allergies

      t.timestamps
    end
  end
end
