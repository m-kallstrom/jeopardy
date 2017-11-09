class GameBoard < ApplicationRecord
  belongs_to :game
  has_many   :questions

end
