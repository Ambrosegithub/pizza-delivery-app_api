class CustomersController < ApplicationController
       #before_action :set_doctor, only: %i[show update destroy]

    def index
        @customers = Customer.all
        render json: @customers
    end

    def show
        @customer = Customer.find(params[:id])
        render json: @customer
    end

    def new
    end

    def create
        @customer = Customer.new(customer_params)
    
        if @customer.save
          render json: @customer, status: :created, location: @customer
        else
          render json: @customer.errors, status: :unprocessable_entity
        end
    end

    def update
        @customer = Customer.find(params[:id])
        render json: @customer
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
        render json: { message: 'customer deleted' }
    rescue ActiveRecord::RecordNotFound
        raise JsonapiErrorsHandler::Errors::NotFound
    end

 private
 def customer_params
    params.require(:customer).permit(:first_Name, :last_Name, :tel, :email, allergies:[])
 end
end
