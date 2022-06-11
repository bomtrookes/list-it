class FavouriteListsController < ApplicationController

  before_action :set_user

  def create
    @user
    @user.favourite_lists << current_user
    redirect_to @user
  end

  def destroy
    @user
    fav = FavouriteLists.find_by(user_id: current_user.id, list_id: params[:id])
    fav.destroy

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
