class Follow < ApplicationRecord

  # https://betterprogramming.pub/how-to-create-a-follow-feature-in-rails-by-aliasing-associations-30d63edee284

  # The user giving the follow
  belongs_to :follower, foreign_key: :follower_id, class_name: "User"
  # The user being followed
  belongs_to :followed, foreign_key: :followed_id, class_name: "User"

  validates :follower_id, uniqueness: { scope: :followed_id }
  validates :followed_id, uniqueness: { scope: :follower_id }

end
