class CarsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @cars = Car.all
    end

    def create
        Car.create(car_params)

        redirect_to :controller => 'cars', :action => 'index' 
    end

    def new
        @car = Car.new
    end

    def edit
        @car = Car.find(params[:id])
    end

    def show
        @car = Car.find(params[:id])
    end

    def update
        @car = Car.find(params[:id])
        @car.update(course_params)

        redirect_to :controller => 'cars', :action => 'show' 
    end

    def destroy
        @car = Car.find(params[:id])
        @car.destroy
    end

    private
    def car_params
        params.require(:car).permit(:nickname,:description, :default)
    end
end
