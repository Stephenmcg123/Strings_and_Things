class SportsEquipment < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  # after_validation :geocode, if: :will_save_change_address?
  include PgSearch::Model
  pg_search_scope :search_by_category_and_size,
                  against: %i[category size],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
