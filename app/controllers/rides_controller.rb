class RidesController < ApplicationController

  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(rider_params)
    if @ride.save
      # session[:user_id] = @ride.id
      redirect_to '/rides'
    else
      render 'new'

    end
  end

  def show
    @ride = Ride.find(params[:id])
  end

  private
  def rider_params
    params.require(:ride).permit(:ride_name, :date, :milage, :start_info, :description)
  end

end
