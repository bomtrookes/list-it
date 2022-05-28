class User < ApplicationRecord

  # Will return an array of follows for the given user instance
  has_many :received_follows, foreign_key: :followed_id, class_name: "Follow"
  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower

  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed

  # validates :username, uniqueness: { case_sensitive: true }
  # validates :username, presence: true
  # validates :bio, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
