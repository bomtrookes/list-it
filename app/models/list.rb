class List < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :items, dependent: :destroy
  has_many :favourite_lists, dependent: :destroy
  has_many :favoriters, through: :favourite_lists, source: :user
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user

  # gem tags
  acts_as_taggable_on :tags

  validates :title, presence: true, length: { minimum: 2 }
  validates :user_id, presence: true
  validates :published, inclusion: [true, false]

  # Search Users, Lists, Tags
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:title],
      associated_against: {
      user: [:username],
      tags:[:name]
  }
  pg_search_scope :search_list, against: [:title], using: { tsearch: { prefix: true } }
  pg_search_scope :search_user, associated_against: { user: [:username] }, using: { tsearch: { prefix: true } }
  pg_search_scope :search_tag, associated_against: { tags: [:name] }, using: { tsearch: { prefix: true } }

end
