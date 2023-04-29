class AddCustomerRefToRating < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :customer, null: false, foreign_key: true
  end
end
