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
      button_to "♡ Unpin", list_favourite_list_path(list, fav), method: :delete
    else
      button_to "♥️ Pin", list_favourite_lists_path(list)
    end
  end

  def vote_unvote_button(list, vote)
    if vote
      button_to "Remove vote", list_vote_path(list, vote), method: :delete
    else
      button_to "Vote", list_votes_path(list)
    end
  end

  def random_list
    user = User.where("id != ?", current_user).sample
    list = List.where(published: true).sample
    return user_list_path(user, list)
  end
end
