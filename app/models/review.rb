class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: RATING }, numericality: true
  validates :content, presence: true
end
