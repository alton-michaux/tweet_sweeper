# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  private

  def params
    params.require(:user).permit(:name, :email)
  end
end
