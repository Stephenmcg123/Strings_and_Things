class BookingsController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: %i[new create]
  # GET /sports_equipments/:sports_equipment_id/bookings/new
  def new

  end
  # POST /sports_equipments/:sports_equipment_id/bookings
  def create

  end
  # DELETE //bookings/id
  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :start_hour, :return_date, :return_hour, :user_id, :sports_equipment_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_sports_equipment
    @sports_equipment = SportsEquipment.find(params[:sports_equipment_id])
  end
end
