class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  validates :name, :measurement_units, :price, presence: true
end
