class Theme < ApplicationRecord
    has_one :game
    has_many :cards

end
