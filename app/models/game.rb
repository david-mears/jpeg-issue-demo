class Game < ApplicationRecord
  has_many :cups, dependent: :destroy
  has_many :players, dependent: :destroy
  validates :slug, presence: true
end
