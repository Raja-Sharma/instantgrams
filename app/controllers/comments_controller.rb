class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
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

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      @photo = Photo.find(@comment.photo_id)
      redirect_to @photo
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @photo = Photo.find(@comment.photo_id)
    @comment.destroy

    redirect_to @photo
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :picture_id)
    end

end
