class Cup < ApplicationRecord
  belongs_to :game
  validates :type, presence: true

  NAMES = {
    accursed_chalice: 'The Accursed Chalice',
    merlins_goblet: "Merlin's Goblet",
    holy_grail: 'The Holy Grail'
  }.freeze

  enum type: { accursed_chalice: 0, merlins_goblet: 1, holy_grail: 2 }
end
