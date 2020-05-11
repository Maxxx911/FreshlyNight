class Category < ApplicationRecord
  has_many :categories_dishes
  has_many :dishes, through: :categories_dishes
end
