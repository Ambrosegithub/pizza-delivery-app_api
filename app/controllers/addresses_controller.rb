class AddressesController < ApplicationController
  def index
    @addresses = Address.all
    render json: @addresses
  end

  def show
    @address = Address.all
    render json: @address
  end

  def update
    @address = Address.all
    render json: @address
  end

  def show
    @address = Address.all
    render json: @address
  end
  def create
    @address = Address.new(address_params)
  if   @address.save
       render json: @address, status: :created#, location: customer_address_url()

  else
    render json:  @address.errors, status: :unprocessable_entity

  end
  end
  def destroy
    @address = Address.all
    render json: @address
  end
  private 
  def address_params
    params.require(:address).permit(:region, :province, :unit_number, :street_Number, :street_Name, :city, :posta_code, :customer_id, :restaurant_id, :delivery_driver_id)
  end
end
