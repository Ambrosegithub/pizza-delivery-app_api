class Customer < ApplicationRecord
    has_many :delivery_drivers, through: :rating
    has_many :delivery_drivers, through: :order
    has_many :restaurants
    has_many :restaurants, through: :rating
    has_many :addresses, dependent: :destroy
    has_many :addresses, through: :customer_address
    has_many :payments
    has_many :payments, through: :order
    has_many :orders, dependent: :destroy
end
