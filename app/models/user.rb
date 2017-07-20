class User < ApplicationRecord
  has_many :pictures
  has_many :likes
  has_many :comments
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :username, :avatar, presence: true
end
