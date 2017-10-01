class StaysController < ApplicationController
  before_action :set_guest

  def new
    @stay = Stay.new
  end

  def create
    @stay = Stay.new
    @stay.guest = @guest
    if @stay.save
      redirect_to root_path
    else
      render new
    end
  end

  private
    def set_guest
      @guest = Guest.find(params[:guest_id])
    end

    def stay_params
      params.require(:stay).permit(:type, :go_date, :return_date, :carpooling_offer, :group_offer)
    end
end
