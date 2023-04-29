class DeliveryDriver < ApplicationRecord
    #belongs_to :restaurant
    #belongs_to :restaurant, through: :order
    has_many :rating, through: :customer
    #belongs_to :customer
    #belongs_to :customer, through: :customer_address
    has_many :addresses
    has_many_attached :image
    #validate data input
    #validate :first_Name, presence: true
end
