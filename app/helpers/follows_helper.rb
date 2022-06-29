module FollowsHelper

  def follow_or_unfollow_button(user, following)
    if following
      button_to "Unfollow", user_follow_path(user, following), method: :delete
    else
      button_to "Follow", user_follows_path(user)
    end
  end

end
