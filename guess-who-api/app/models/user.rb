class User < ApplicationRecord
    has_secure_password
    has_many :p1games, foreign_key: :player1_id, class_name: 'Game'
    has_many :player1s, through: :player1_games

    has_many :p2games, foreign_key: :player2_id, class_name: 'Game'
    has_many :player2s, through: :player2_games
   

end
