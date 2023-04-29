class Rating < ApplicationRecord
    #belongs_to :customer
    belongs_to :delivery_driver, through: :customer
    belongs_to :restaurant, through: :customer
end
