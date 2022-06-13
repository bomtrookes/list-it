class List < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :items, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :favourite_lists, dependent: :destroy
  has_many :favoriters, through: :favourite_lists, source: :user

  # gem tags
  acts_as_taggable_on :tags

  validates :title, presence: true, length: { minimum: 2 }
  validates :user_id, presence: true
  validates :published, inclusion: [true, false]

  def self.ordered_published_lists
    where('published = ?', true).left_joins(:votes).group(:id).order('COUNT(votes.id) DESC')
  end
end
