class GamesController < ApplicationController

    def create
        data = JSON.parse(request.raw_post)
        # byebug
        game = Game.create(data)
        
        render json: game
    end
end
