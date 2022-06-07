class FollowsController < ApplicationController

  before_action :set_user

  def following
    @user
  end

  def followers
    @user
  end

  def create
    @user.followers << current_user
    redirect_to @user
  end

  def destroy
    followed = current_user.followers.find(@user.id)
    followed.destroy

    redirect_to @user
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
