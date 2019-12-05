class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  # l'un ou l'autre fonctionne au rake à voir la diff
end
