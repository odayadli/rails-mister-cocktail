class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_one_attached :photo
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  validates :name, presence: true
  
  def self.search(search)
    if search
      cocktail = Cocktail.find_by(name: search)
      if cocktail
        where(cocktail_id: cocktail)
      else
        Cocktail.all
      end
    end
  end
end
