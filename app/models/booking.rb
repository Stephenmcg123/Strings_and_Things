class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sports_equipment
end
