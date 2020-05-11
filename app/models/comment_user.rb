class CommentUser < ApplicationRecord
  belongs_to :user
  belongs_tp :comment
end
