class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find_by(id: params[:id])
  end

  def new

  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to @picture
    else
      @errors = @picture.errors.full_messages
      render status: 422, action: :new
    end
  end

  # def update
  #   @comment = Comment.find(params[:id])
  #
  #   if @comment.update(comment_params)
  #     @picture = Picture.find(@comment.picture_id)
  #     redirect_to @picture
  #   else
  #     @errors = @comment.errors.full_messages
  #     render status: 422, action: :edit
  #   end
  # end
  #
  # def destroy
  #   @comment = Comment.find(params[:id])
  #   @picture = Picture.find(@comment.picture_id)
  #   @comment.destroy
  #
  #   redirect_to @picture
  # end
  #
  # private
  #   def picture_params
  #     params.require(:picture).permit(:user_id, :image)
  #   end

end
