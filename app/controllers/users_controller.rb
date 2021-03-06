# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :index
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
