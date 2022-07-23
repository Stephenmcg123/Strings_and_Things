class RemoveStartHourFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :start_hour
  end
end
