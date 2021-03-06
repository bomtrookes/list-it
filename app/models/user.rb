class User < ApplicationRecord
  acts_as_taggable_on :tags

  # has_one_attached :avatar

  has_many :lists, dependent: :destroy
  has_many :favourite_lists, dependent: :destroy
  has_many :favourited_lists, through: :favourite_lists, source: :list
  has_many :votes, dependent: :destroy
  has_many :voted_lists, through: :votes, source: :vote

  # https://betterprogramming.pub/how-to-create-a-follow-feature-in-rails-by-aliasing-associations-30d63edee284

  # Will return an array of follows for the given user instance
  has_many :received_follows, foreign_key: :followed_id, class_name: "Follow"
  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower

  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed

  validates :username, uniqueness: { case_sensitive: true }
  validates :username, presence: true, length: { in: 2..30 }
  validates :bio, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Search Users, Lists, Tags
  include PgSearch::Model
  pg_search_scope :search_user, against: [:username], using: { tsearch: { prefix: true } }

end
