class Cocktail < ApplicationRecord
  COCKTAIL_CATEGORIES = %w(Martini, Bloody Mary, Manhattan, Margarita, Daiquiri, Punch, Vodka, Champagne, Bourbon, Tequila, Gin)
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: COCKTAIL_CATEGORIES }
end
