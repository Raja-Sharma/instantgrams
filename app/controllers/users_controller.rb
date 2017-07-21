class UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    render json: user, serializer: UserSerializer
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render status: 422, action: new
    end
  end
end
