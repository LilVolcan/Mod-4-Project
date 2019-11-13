class GamesController < ApplicationController

    def index
        games = Game.all.select{|game| game[:player2_id] == nil }

        render json: games
    end
   
    def create
        data = JSON.parse(request.raw_post)
        # byebug
        game = Game.create(data)
        
        render json: game
    end

    def addcard
        game = Game.find(params[:id])
        data = JSON.parse(request.raw_post)
        game.update(data)
        game.save()
        # byebug
        render json: game
    end 
end
