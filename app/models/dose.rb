class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_one_attached :photo
  validates :description, :cocktail_id, :ingredient_id, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
