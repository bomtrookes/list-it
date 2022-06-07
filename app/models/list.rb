class List < ApplicationRecord
  belongs_to :user
  # when you destroy the list the items get destoryed as well
  has_many :items, dependent: :destroy
  # gem tags
  acts_as_taggable_on :tags

  validates :title, presence: true, length: { minimum: 2 }
  validates :user_id, presence: true
  validates :published, inclusion: [true, false]
end
