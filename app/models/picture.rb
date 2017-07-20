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
end
