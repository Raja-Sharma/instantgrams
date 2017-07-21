class PictureSerializer < ActiveModel::Serializer
  attributes :id, :caption, :url, :poster, :updated_at, :num_likes, :num_comments
  has_many :comments
  has_many :likes
end
