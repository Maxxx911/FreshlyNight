class Dish < ApplicationRecord
  has_and_belongs_to_many :components
  has_many :products, through: :components
  has_many :categories_dishes
  has_many :categories, through: :categories_dishes
  has_many :dish_menus
  has_many :menus, through: :dish_menus
  has_one :calory
  has_one :recept
  has_many :comment_dishes
  has_many :comments, through: :comment_dishes
  has_and_belongs_to_many :images, join_table: :dish_images
  paginates_per 10
end
