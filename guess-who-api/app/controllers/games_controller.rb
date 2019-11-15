class GamesController < ApplicationController

    def index
        games = Game.all.select{|game| game[:player2_id] == nil }

        render json: games
    end

    def iscard
        data = JSON.parse(request.raw_post)
        game = Game.find(data["game_id"])
        message = {}
        if game.player1_id == data["user_id"].to_i
            if game.p2card_id == data["card_id"]
                message = {username: "admin", message: "you have successfully guessed the card!!"}
            else
                message = {username: "admin", message: "you failed now you have lost your turn"}
            end
        else if game.player2_id == data["user_id"].to_i
            if game.p1card_id == data["card_id"]
                message = {username: "admin", message: "you have successfully guessed the card!!"}
            else
                message = {username: "admin", message: "you failed now you have lost your turn"}
            end
        end
        end

           render json: message
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

    def sendmessage
        data = JSON.parse(request.raw_post)
        # byebug
        ActionCable.server.broadcast('question_channel', data)
    end 

end

f
