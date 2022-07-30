class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_sports_equipment, only: %i[new create]
  # GET /sports_equipments/:sports_equipment_id/bookings/new
  def new
    @booking = Booking.new
    authorize @booking
  end

  # POST /sports_equipments/:sports_equipment_id/bookings
  def create
    @booking = Booking.new(booking_params)
    @booking.sports_equipment = @sports_equipment
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to my_bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE //bookings/:id
  def destroy
    @booking.destroy
    redirect_to sports_equipment_path(@booking.sports_equipment)
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :return_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_sports_equipment
    @sports_equipment = SportsEquipment.find(params[:sports_equipment_id])
  end
end
