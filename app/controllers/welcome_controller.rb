class WelcomeController < ApplicationController
  def index
    @brand = Array.new
    @brand[0] = ""
    Car.all.uniq.each do |c|
       @brand.push(c.brand)
    end
    
    @search = Car.ransack(params[:q])
    @cars = @search.result
  end
end
