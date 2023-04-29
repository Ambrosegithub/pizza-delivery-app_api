class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :restaurant, through: :customer
    #belongs_to :payment
    belongs_to  :customer, through: :delivery_driver
    has_many :order_status, dependent: :destroy
    enum status: {
        pending: 0,
        accepted: 1,
        rejected: 2,
    }
end
