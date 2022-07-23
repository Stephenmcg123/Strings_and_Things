class RemoveReturnHourFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :return_hour
  end
end
