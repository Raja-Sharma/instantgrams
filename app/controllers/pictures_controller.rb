class PicturesController < ApplicationController
  def index
    picture = Picture.all
    urls = picture.map do |pic|
      pic.image.url
    end
    likes = picture.as_json(include: { likes: {
      include: :liker
      }})
    comments = picture.as_json(include: { comments: {
      include: :commenter
      }})
      binding.pry
    blah = {comments: comments, likes: likes}
    render json: blah
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
