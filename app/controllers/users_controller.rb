class UsersController < ApplicationController

  before_action :set_user

  def show
    @user
    @following = current_user.followings.find_by(id: @user.id)
  end

  private

  def set_user
    if params[:id] == current_user.id
      @user = current_user
    else
      @user = User.find(params[:id])
    end
  end

end
