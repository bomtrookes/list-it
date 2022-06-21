class FavouriteListsController < ApplicationController

  before_action :set_list

  def create
    @list.favourite_lists.create!(user: current_user)

    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  def destroy
    fav = current_user.favourite_lists.find(params[:id])
    fav.destroy

    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

end
