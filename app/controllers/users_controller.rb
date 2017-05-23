class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {
        status: 'success',
        code: '200',
        user: @user
      }
    else
      render json: {
        status: 'faild',
        code: '200',
        user: @user
      }
    end
  end

  private

  def user_params
    params.require(:user).permit!
  end

  def set_user
    @user = User.find(params[:id])
  end
end

