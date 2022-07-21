class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sports_equipment

  validates :price, presence: true
  validates :start_date, presence: true
  validates :return_date, presence: true
  validates :start_hour, presence: true
  validates :return_hour, presence: true
end
