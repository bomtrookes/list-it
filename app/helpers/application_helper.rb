module ApplicationHelper
  def hide_button(user)
    user.id == current_user.id
  end
end
