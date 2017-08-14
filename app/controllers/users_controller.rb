class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @user.destroy
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :sex)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
