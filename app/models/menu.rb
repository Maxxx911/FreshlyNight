class Menu < ApplicationRecord
  has_one :calory
  has_many :dish_menus
  has_many :dishes, through: :dish_menus
  has_and_belongs_to_many :images, join_table: :image_menus
end
