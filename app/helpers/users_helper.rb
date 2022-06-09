module UsersHelper

  def hide_follow_button(user)
    user.id == current_user.id
  end

end
