class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates_associated :starts_at, presence: true, uniqueness: true
  validates_associated :ends_at, presence: true, uniqueness: true

  after_create :send_booking_email

  private

  def send_booking_email
    BookingMailer.with(booking: self).confirmation_booking.deliver_now
  end
end
