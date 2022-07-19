class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :sports_equipment, null: false, foreign_key: true
      t.float :price
      t.datetime :start_date
      t.datetime :return_date
      t.time :start_hour
      t.time :return_hour

      t.timestamps
    end
  end
end
