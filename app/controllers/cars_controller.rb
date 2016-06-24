class CarsController < ApplicationController
  def index
    @brand = Array.new
    @brand[0] = ""
    Car.all.uniq.each do |c|
       @brand.push(c.brand)
    end

    #@cars = Car.all
    @search = Car.ransack(params[:q])
    @search.sorts = 'brand asc' if @search.sorts.empty?
    @cars = @search.result
  end
  def show
    @car = Car.find(params[:id])
  end
end
