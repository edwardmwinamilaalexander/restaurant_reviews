class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, inclusion: { in: 0..5 }
  validates :content, presence: true
end
