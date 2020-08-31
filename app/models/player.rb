class Player < ApplicationRecord
  belongs_to :game
  # TODO: belongs_to :user

  enum allegiance: { evil: 0, good: 1 }, _suffix: :allegiance
end
