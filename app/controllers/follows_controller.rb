class FollowsController < ApplicationController

  before_action :set_user

  def following
    @user
  end

  def followers
    @user
  end

  def create
    @user
    @user.followers << current_user
    redirect_to @user
  end

  def destroy
    @user
    follow = Follow.find_by(follower_id: current_user.id, followed_id: @user.id)
    follow.destroy

    redirect_to @user
  end

  private

  def set_user
    if params[:user_id] == current_user.id
      @user = current_user
    else
      @user = User.find(params[:user_id])
    end
  end

end
