class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :experience
end
