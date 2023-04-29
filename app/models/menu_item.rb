class MenuItem < ApplicationRecord
    belongs_to :restaurants
    belongs_to :restaurants, through: :restaurant_menu_items
    has_many :order
    has_many :order, through: :order_menu_item
    has_many_attached :image
end
