class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find_by(id: params[:id])
  end

  def new
    @picture = Picture.new
  end

  def edit

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

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      redirect_to @picture
    else
      @errors = @picture.errors.full_messages
      render status: 422, action: :edit
    end
  end

  def destroy
    @picture = Article.find(params[:id])
    @picture.destroy

    redirect_to picture_path
  end

  private
    def picture_params
      params.require(:picture).permit(:user_id, :, :image, :caption)
    end

end
