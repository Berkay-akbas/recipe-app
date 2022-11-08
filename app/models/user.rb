class User < ApplicationRecord
  has_many :recipes, foreign_key: :user_id
  has_many :inventories, foreign_key: :user_id
  has_many :inventory_foods, through: :inventories
  has_many :recipe_foods, through: :recipes
end
