class WelcomeController < ApplicationController
  def index
    @search = Car.ransack(params[:q])
    @cars = @search.result
  end
end
