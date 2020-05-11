class Recept < ApplicationRecord
  has_and_belongs_to_many :images, join_table: :image_recepts
end
