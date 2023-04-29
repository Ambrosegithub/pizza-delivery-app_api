# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# add customer reference to address

#customer ref
rails g migration AddCustomerRefToAddress customer:references
rails g migration AddCustomerRefToAddress customer:references
rails g migration AddCustomerRefToRestaurant customer:references
rails g migration AddCustomerRefToRating customer:references
rails g migration AddCustomerRefToOrder customer:references
rails g migration AddCustomerRefToPayment customer:references
rails g migration AddCustomerRefToCustomer_Address customer:references, address:references

#restaurant ref
rails g migration AddRestaurantRefToAddress restaurant:references
rails g migration AddRestaurantRefToMenu_item restaurant:references
rails g migration AddRestaurantRefToRating restaurant:references
rails g migration AddRestaurantRefToOrder restaurant:references
rails g migration AddRestaurantRefToRestaurant_menu_item restaurant:references, menu_item:references

#order ref
rails g migration AddOrderRefToOrder_status order:references

# delivery_driver ref
rails g migration AddDelivery_driverRefToAddress delivery_driver:references

#rails g migration AddCustomerRefToAddress customer:references
#rails g migration AddCustomerRefToAddress customer:references
#rails g migration AddCustomerRefToAddress customer:references
#rails g migration AddCustomerRefToAddress customer:references
#rails g migration AddCustomerRefToAddress customer:references
#rails g migration AddCustomerRefToAddress customer:references
#rails g migration AddCustomerRefToAddress customer:references

rails generate migration AddStatusToOrder status:integer:index