class Player < ApplicationRecord
  belongs_to :game
  validates :allegiance, presence: true
  validates :name, presence: true
  validates :image, presence: true

  enum allegiance: { evil: 0, good: 1 }, _suffix: :allegiance
end
