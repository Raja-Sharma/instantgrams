class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
  end

  def destroy
    @like = Like.find_by(id: params[:id])
    @photo = Photo.find_by(id: @like.picture_id)
    @like.destroy

    redirect_to @photo
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :picture_id)
  end

end
