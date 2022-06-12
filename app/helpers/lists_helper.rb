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

  def fav_unfav_button(list, fav)
    if fav
      button_to "♡ Unfav", list_favourite_list_path(list, fav), method: :delete
    else
      button_to "♥️ Fav", list_favourite_lists_path(list)
    end
  end

end
