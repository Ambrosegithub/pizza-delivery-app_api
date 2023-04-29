class Address < ApplicationRecord
    belongs_to :customer
   # belongs_to :customer #, through: :customer_address
end
