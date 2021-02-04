class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, uniqueness: true
  validates :name, :photo, :category, presence: true
  
  def self.search(search)
    if search
      cocktail = Cocktail.find_by(name: search)
      if cocktail
        where(cocktail_id: cocktail)
      else
        @cocktails = Cocktail.all
      end
    else
      @cocktails = Cocktail.all
    end
  end
end
