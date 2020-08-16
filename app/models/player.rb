class Player < ApplicationRecord
  enum allegiance: { evil: 0, good: 1 }, _suffix: :allegiance
end
