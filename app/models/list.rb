class List < ApplicationRecord
  belongs_to :user
  # gem tags
  acts_as_taggable_on :tags
end
