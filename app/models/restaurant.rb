class Restaurant < ApplicationRecord
  CUISINECATEGORY = [ "chinese", "italian", "japanese", "french", "belgian" ]

  # associations
  has_many :reviews, dependent: :destroy # restaurant.reviews

  # validations
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CUISINECATEGORY }
end
