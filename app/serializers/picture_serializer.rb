class PictureSerializer < ActiveModel::Serializer
  attributes :id, :caption, :url, :poster, :poster_avatar_url, :post_time, :num_likes, :num_comments
  has_many :comments
  has_many :likes
end
