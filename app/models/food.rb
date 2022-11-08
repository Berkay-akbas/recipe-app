class Food < ApplicationRecord
  has_many :recipe_foods, foreign_key: :measurement_unit, class_name: 'RecipeFood'
  has_many :recipes, through: :recipe_foods
  has_many :inventory_foods, foreign_key: :food_id
end
