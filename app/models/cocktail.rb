class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
end
