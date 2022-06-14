class VotesController < ApplicationController

  before_action :set_list

  def create
    @list.votes.create!(user: current_user)
    redirect_to @list
  end

  def destroy
    vote = current_user.votes.find(params[:id])
    vote.destroy

    redirect_to @list
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

end
