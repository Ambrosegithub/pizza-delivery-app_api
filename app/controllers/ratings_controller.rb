class RatingsController < ApplicationController
    def index
        @ratings = Rating.all
        render json: @ratings
    end
    def show
        @rating = Rating.find(params[:id])
        render json: @rating
    rescue ActiveRecord::RecordNotFound
      raise JsonapiErrorsHandler::Errors::NotFound
    end
    def new
    end
    def create
        @rating = Rating.new(rating_params)
        if @rating.save
            render json: @rating, status: :created, location: @rating
            
        else
          render json: @rating.errors, status: :unprocessable_entity  
        end
    end
    def update
        @rating = Rating.find(params[:id])
         render json: { message: 'review updated successfully' }
    rescue ActiveRecord::RecordNotFound
      raise JsonapiErrorsHandler::Errors::NotFound
    end
    def destroy
        @rating = Rating.find(params[:id])
        @rating.destroy
        render json: { message: 'review deleted' }
    rescue ActiveRecord::RecordNotFound
      raise JsonapiErrorsHandler::Errors::NotFound
    end

    private 
   def rating_params
    params.require(:rating).permit(:star, :leave_a_review, :customer_id, :restaurant_id, :delivery_driver_id)
   end
end
