class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
    @picture = Picture.find_by(id: @like.picture_id)

    if @like.save
      redirect_to @picture
    else
      @errors = @like.errors.full_messages
      render status: 422, action: new
    end
  end

  def destroy
    @like = Like.find_by(id: params[:id])
    @picture = Picture.find_by(id: @like.picture_id)
    @like.destroy

    redirect_to @picture
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :picture_id)
  end

end
