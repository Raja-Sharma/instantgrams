class Like < ApplicationRecord
  belongs_to :user
  belongs_to :picture

  validates :user_id, :picture_id, presence: true
end
