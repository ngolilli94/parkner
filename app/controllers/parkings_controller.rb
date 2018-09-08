class ParkingsController < ApplicationController

    before_action :authenticate_user!
    
    def index
        @user = current_user
    end

    def create
        Parking.create(parking_params)

        redirect_to :controller => 'parkings', :action => 'index' 
    end

    def new
        @parking = Parking.new
    end

    def edit
        @parking = Parking.find(params[:id])
    end

    def show
        @parking = Parking.find(params[:id])
        @parkedCar = @parking.car
    end

    def update
        @car = Car.find(params[:id])
        @car.update(car_params)

        redirect_to :controller => 'cars', :action => 'show' 
    end

    def destroy
        @parking = Parking.find(params[:id])
        @parking.destroy
    end

    private
    def parking_params
        params.require(:parking).permit(:user_id,:car_id)
    end
end
