class CommentDish < ApplicationRecord
  belongs_to :comment
  belongs_to :dish
end
