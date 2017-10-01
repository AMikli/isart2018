class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      redirect_to new_guest_booking_path(@guest.id)
    else
      render new
    end
  end

  def show
  end

  private
      def guest_params
        params.require(:guest).permit(:first_name, :last_name, :email, :address, :zip_code, :country)
      end
end
