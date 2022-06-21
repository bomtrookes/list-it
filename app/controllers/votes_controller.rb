class VotesController < ApplicationController

  before_action :set_list

  def create
    @list.votes.create!(user: current_user)

    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  def destroy
    vote = current_user.votes.find(params[:id])
    vote.destroy

    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

end
