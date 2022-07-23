class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def about
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end
end
