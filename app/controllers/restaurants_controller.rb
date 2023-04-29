class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
        render json: @restaurants
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            render json: @restaurant,  status: :created, location: @restaurant
        else
            render json: @restaurant.errors, status: :unprocessable_entity
        end
    end

    def update
    end

    def destroy
    end
    private 
    def restaurant_params
        params.require(:restaurant).permit(:restaurant_Name, :is_verified, :in_holiday, :re_open_date, :customer_id)
    end
end
