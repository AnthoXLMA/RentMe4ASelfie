class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates_associated :starts_at, presence: true, uniqueness: true
  validates_associated :ends_at, presence: true, uniqueness: true
end
