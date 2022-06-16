module ApplicationHelper

  def hide_button(user)
    user.id == current_user.id
  end

  def format_username(username)
    '@' + username
  end

  def format_tag(tag)
    '#' + tag
  end

end
