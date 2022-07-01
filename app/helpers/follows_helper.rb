module FollowsHelper

  def follow_or_unfollow_button(user, following)
    if following
      button_to "Unfollow", user_follow_path(user, following), form: { id: "follow-btn" }, method: :delete
    else
      button_to "Follow", user_follows_path(user), form: { id: "follow-btn" }
    end
  end
end
