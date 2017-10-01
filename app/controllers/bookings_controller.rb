class BookingsController < ApplicationController
  before_action :set_guest_housing

  def new
    @booking = Booking.new()
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.guest = @guest
    @booking.housing = Housing.find(params[:booking][:housing_id])
    if @booking.save
      redirect_to new_guest_stay_path
    else
      render new
    end
  end

  private

    def set_guest_housing
      @guest = Guest.find(params[:guest_id])
      @housings = Housing.all
    end

    def booking_params
      params.require(:booking).permit(:beds, :housing_id)
    end
end
