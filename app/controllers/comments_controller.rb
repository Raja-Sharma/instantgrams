class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      @photo = Photo.find(@comment.photo_id)
      redirect_to @photo
    else
      render 'new'
    end
  end

  def destroy
    @comment = Article.find(params[:id])
    @comment.destroy

    redirect_to articles_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :picture_id)
  end
end
