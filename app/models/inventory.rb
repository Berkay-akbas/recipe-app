class Inventory < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, class_name: 'User'
  has_many :inventory_foods, foreign_key: :inventory_id, dependent: :destroy
  has_many :foods, through: :inventory_foods
end