class ParkingsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = current_user
    end

    def show
        @parking = Parking.find(params[:id])
        @parkedCar = @parking.car
    end

    def new
        @parking = Parking.new
    end

    def create
        @parking = Parking.new(parking_params)
        if @parking.save
            redirect_to :controller => 'parkings', :action => 'index', alert: "Parking session successfully created!"
        else
            redirect_to new_parking_path, alert: "Error creating parking."
        end 
    end

    def edit
        @parking = Parking.find(params[:id])
    end

    def update
        @parking = Parking.find(params[:id])
        @parking.update(parking_params)

        redirect_to :controller => 'cars', :action => 'show' 
    end

    def destroy
        @parking = Parking.find(params[:id])
        @parking.destroy
    end

    private
    def parking_params
        params.require(:parking).permit(:active, :address, :start_latitude, :end_latitude,:start_longitude, :end_longitute, :move_by, :remind_at, :user_id,:car_id)
    end
end
