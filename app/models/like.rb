class Like < ApplicationRecord
  belongs_to :liker, class_name: :User, foreign_key: "user_id"
  belongs_to :picture

  validates :user_id, :picture_id, presence: true

  def liker_name
    self.liker.username
  end
end
