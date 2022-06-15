class UsersController < ApplicationController

  before_action :set_user

  def show
    @following = current_user.followings.find_by(id: @user.id)
  end

  def index
    if params[:query].present?
      # @ordered_lists = List.search_by_title(params[:query])
      @users = User.global_search(params[:query])
    else
      @users = User.all
    end
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
