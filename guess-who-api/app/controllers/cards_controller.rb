class CardsController < ApplicationController

    def index
        cards = Card.all 
        render json: CardSerializer.new(cards).serialized_json
    end

    def filter
        cards = Card.all.select{ |card| card[:theme_id] == params[:theme_id].to_i}
        render json: cards
    end 

end
