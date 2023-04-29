class OrdersController < ApplicationController
    before_action :set_order, only: %i{show edit update destroy accept decline}
    def index
        @orders = Order.all
        render json: @orders, status: :created
    end
    def show
    end
    def new
    end
    def create
        @order = Order.new(order_params)
    end
    def update
    end
    def destroy
    end
    def accept
        if @order.accepted!
            render json: @order, notice: 'Order accepted'
            
        else
            render json: @order.errors, notice: 'Order Declined '
        end
    end
    def decline
    end
    def notification
    end

    private
    def set_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.require(:order).permit(:order_date, :delivery_fee, :total_Amount, :requested_delivery_date, :customer_id, :restaurant_id)
    end
end
