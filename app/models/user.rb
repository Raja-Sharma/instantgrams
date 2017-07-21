class User < ApplicationRecord
  has_many :pictures
  has_many :likes
  has_many :comments
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", storage: :s3, s3_credentials: Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :username, :avatar, presence: true

  def s3_credentials
    {:bucket => ENV['S3_BUCKET_NAME'], :access_key_id => ENV['AWS_ACCESS_KEY_ID'], :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'], :s3_region => ENV['AWS_REGION']}
  end

  def avatar_url
    self.avatar.url
  end
end
