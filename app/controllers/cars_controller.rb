class CarsController < ApplicationController
  def index
    #@cars = Car.all
    @search = Car.ransack(params[:q])
    @cars = @search.result
  end
  def show
    @car = Car.find(params[:id])
  end
end
