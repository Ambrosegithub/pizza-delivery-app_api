class Restaurant < ApplicationRecord
    has_many :menu_items
    has_many :menu_items, through: :restaurant_menu_items
    has_many :orders, through: :customer
    has_many :customers
    has_many :addresses
    has_many :customers, through: :customer_address
    has_many :rating, through: :customer
    has_many :delivery_drivers
    has_many :delivery_drivers, through: :order
end
