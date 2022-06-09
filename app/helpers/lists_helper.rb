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

end
