class Cocktail < ApplicationRecord
  COCKTAIL_CATEGORIES = %w(Martini Bloody Mary Manhattan Margarita Daiquiri Punch Vodka Champagne Bourbon Tequila Gin).sort
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_attachment :picture
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: COCKTAIL_CATEGORIES }, allow_nil: true
end
