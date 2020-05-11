class Comment < ApplicationRecord
  has_many :comment_dishes
  has_many :dishes, through: :comment_dishes
  has_many :comment_users
  has_many :users, through: :comment_users
end
