class RecipeFood < ApplicationRecord
  belongs_to :recipe, foreign_key: :recipe_id, class_name: 'Recipe'
  belongs_to :food
end
