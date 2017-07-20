class PicturesController < ApplicationController
  def index
    # get a collection of all the picture objects
    picture = Picture.all

    # get the image urls for every picture in the db
    urls = picture.map do |pic|
      pic.image.url
    end

    # get all the likes data for every picture
    likes = picture.as_json(include: { likes: {
      include: { liker: {
        only: :username } },
      only: :picture_id} })

    # iterate over the likes array adding url data to each picture data set
    likes.each do |picture|
      index = picture["id"] - 1
      picture["url"] = urls[index]
    end

    # get all the comments data for every picture
    comments = picture.as_json(include: { comments: {
      include: { commenter: {
        only: :username } },
      only: :body } })
      binding.pry

    # combine likes and comments data
    data = {pic_comment_data: comments, pic_likes_data: likes}

    # send it!
    render json: data
  end

  def test
    render 'test'
  end
  #
  # def show
  #   @picture = Picture.find_by(id: params[:id])
  # end
  #
  # def new
  #   @picture = Picture.new
  # end
  #
  # def edit
  #
  # end
  #
  # def create
  #   @picture = Picture.new(picture_params)
  #
  #   if @picture.save
  #     redirect_to @picture
  #   else
  #     @errors = @picture.errors.full_messages
  #     render status: 422, action: :new
  #   end
  # end
  #
  # def update
  #   @picture = Picture.find(params[:id])
  #
  #   if @picture.update(picture_params)
  #     redirect_to @picture
  #   else
  #     @errors = @picture.errors.full_messages
  #     render status: 422, action: :edit
  #   end
  # end
  #
  # def destroy
  #   @picture = Article.find(params[:id])
  #   @picture.destroy
  #
  #   redirect_to picture_path
  # end
  #
  # private
  #   def picture_params
  #     params.require(:picture).permit(:user_id, : :image, :caption)
  #   end

end
