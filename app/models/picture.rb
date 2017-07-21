class Picture < ApplicationRecord
  has_attached_file :image, styles: { square: '200x200#' },
                default_url: "/images/:style/missing.png",
                storage: :s3,
                s3_credentials: Proc.new{ |a| a.instance.s3_credentials }

  validates :user_id, :image, :presence => true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :likers, through: :likes, source: :user
  has_many :commenters, through: :comments, source: :user

  def s3_credentials
    {:bucket => ENV['S3_BUCKET_NAME'], :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'], :s3_region => ENV['AWS_REGION']}
  end

  def url
    self.image.url
  end

  def poster
    self.user.username
  end

  def poster_avatar_url
    self.user.avatar_url
  end

  def num_likes
    likes = self.likes.length
    if likes  == 0
      "Be the first to like this picture!"
    elsif likes == 1
      "1 like"
    else
      "#{likes} likes"
    end
  end

 def num_comments
    numb_comments = self.comments.length
    if numb_comments  == 0
      "Be the first to comment on this picture!"
    elsif numb_comments == 1
      "1 comment"
    else
      "#{numb_comments} comments"
    end
  end
end
