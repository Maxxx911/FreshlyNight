class Calory < ApplicationRecord
  has_many :calory_users
  has_many :users, through: :calory_users
end
