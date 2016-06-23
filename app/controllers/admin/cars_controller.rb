class Admin::CarsController < Admin::AdministrationController
  def index
    @cars = Car.all.order(:brand)
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to :back, flash: {notice: "Advertise was successfully created!"}
    else
      render 'new'
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to admin_cars_path, flash: {notice: "Advertise updated successfully!"}
    else
      render 'edit'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      redirect_to admin_cars_path, flash: {notice: "Advertise successfully destroyed!"}
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :price, :km, :fuel, :year, :description, :model, :car_image)
  end
end
