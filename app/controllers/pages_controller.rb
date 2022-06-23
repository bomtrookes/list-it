class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @lists = List.followings_lists(current_user.followings.ids) if current_user
  end

end
