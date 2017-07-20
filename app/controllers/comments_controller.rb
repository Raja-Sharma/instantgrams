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
      @picture= Picture.find(@comment.picture_id)
      redirect_to @picture
    else
      @errors = @comment.errors.full_messages
      render status: 422, action: :new
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      @picture = Picture.find(@comment.picture_id)
      redirect_to @picture
    else
      @errors = @comment.errors.full_messages
      render status: 422, action: :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @picture = Picture.find(@comment.picture_id)
    @comment.destroy

    redirect_to @picture
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :picture_id)
    end

end
