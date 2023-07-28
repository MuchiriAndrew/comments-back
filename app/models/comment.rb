class Comment < ApplicationRecord
  belongs_to :user
  has_many :replies, foreign_key: :parent_comment_id, class_name: 'Reply'
  belongs_to :parent_comment, class_name: 'Comment', optional: true
end
