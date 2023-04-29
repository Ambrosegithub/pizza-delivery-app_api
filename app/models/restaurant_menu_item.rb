class RestaurantMenuItem < ApplicationRecord
    belongs_to :restaurants
    belongs_to :menu_items
end
