class DeliveryDriverController < ApplicationController
    def index
        @delivery_drivers = DeliveryDriver.all
        render json: @delivery_drivers
    end
    def show
        @delivery_driver = DeliveryDriver.find(params[:id])
    end
    def new
    end
    def create
        @delivery_driver = DeliveryDriver.new(delivery_driver_params)
        if @delivery_driver.save
        render json: @delivery_driver, status: :created, location: @delivery_driver
        else 
            render json: @delivery_driver.errors, status: :unprocessable_entity
        end
    end
    def update
    end
    def destroy
    end

    private 
   def delivery_driver_params
    params.require(:delivery_driver).permit(:img_profile, :first_Name,:last_Name, :delivery_method, :licence_type, :licence_img, :customer_id, :restaurant_id, :image)
   end
end
