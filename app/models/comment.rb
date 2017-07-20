class Comment < ApplicationRecord

  validates :body, :user_id, :picture_id, presence: true

  belongs_to :user
  belongs_to :picture

end
