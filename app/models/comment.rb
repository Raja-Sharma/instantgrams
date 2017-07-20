class Comment < ApplicationRecord

  validates :body, :user_id, :picture_id, presence: true

  belongs_to :commenter, class_name: :User, foreign_key: "user_id"
  belongs_to :picture

end
