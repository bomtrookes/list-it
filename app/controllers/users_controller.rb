class UsersController < ApplicationController

  before_action :set_user

  def show
    @user
    @following = @user.following
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
