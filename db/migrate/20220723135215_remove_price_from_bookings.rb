class RemovePriceFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :price
  end
end
