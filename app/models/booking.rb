class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sports_equipment

  validates :start_date, presence: true
  validates :return_date, presence: true
  validate :return_date_after_start_date

  private

  def return_date_after_start_date
    return if return_date.blank? || start_date.blank?

    errors.add(:return_date, "Must be after the pick up date") if return_date < start_date
  end
end
