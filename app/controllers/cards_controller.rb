class CardsController < ApplicationController

    def index
    cards = Card.all 
    render json: CardSerializer.new(cards).serialized_json
    end
end
