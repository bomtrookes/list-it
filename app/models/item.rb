class Item < ApplicationRecord
  belongs_to :list

  validates :name, presence: true, length: { minimum: 1 }
  validates :list_id, presence: true
  validates :description, length: { maximum: 200 }, allow_blank: true
end
