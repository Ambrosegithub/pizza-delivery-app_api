class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :star
      t.text :leave_a_review

      t.timestamps
    end
  end
end
