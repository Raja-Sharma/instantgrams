class PictureSerializer < ActiveModel::Serializer
  attributes :id, :caption, :url, :poster, :poster_avatar_url, :updated_at, :num_likes, :num_comments
  has_many :comments
  has_many :likes
end
