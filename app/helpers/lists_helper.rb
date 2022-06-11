module ListsHelper

  def published_lists(user)
    user.lists.select do |list|
      list.published?
    end
  end

  def unpublished_lists(user)
    user.lists.reject do |list|
      list.published?
    end
  end

  def fav_unfav_button(user, fav)
    if fav
      button_to "♡", user_favourite_list_path(user, fav), method: :delete
    else
      button_to "♥️", user_favourite_lists_path(user)
    end
  end

end
