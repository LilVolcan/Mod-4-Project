class Game < ApplicationRecord
    belongs_to :player1, class_name: 'User'
    belongs_to :player2, class_name: 'User' , optional: true
    belongs_to :theme
end
