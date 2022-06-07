class UsersController < ApplicationController

  before_action :set_user

  def show
    @user
    # @following = current_user.followings.find(@user.id)
    @following = current_user.followings.find
  end

  private

  def set_user
    if params[:user_id].nil?
      @user = current_user
    else
      @user = User.find(params[:user_id])
    end
  end

end
