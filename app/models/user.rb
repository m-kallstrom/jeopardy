class User < ApplicationRecord
  has_many :games
  has_many :game_boards, through: :games

  has_secure_password
end
