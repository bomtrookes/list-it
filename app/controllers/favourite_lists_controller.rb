class FavouriteListsController < ApplicationController

  before_action :set_list

  def create
    @list.favourite_lists.create!(user: current_user)
    redirect_to @list
  end

  def destroy
    fav = current_user.favourite_lists.find(params[:id])
    fav.destroy

    redirect_to @list
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

end
