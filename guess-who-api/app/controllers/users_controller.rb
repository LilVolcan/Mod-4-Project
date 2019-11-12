class UsersController < ApplicationController
    def index
    users = User.all 
    render json: UserSerializer.new(users).serialized_json
    end

    def create 
        data = JSON.parse(request.raw_post)
        user = User.create(data)

        render json: UserSerializer.new(user).serialized_json
    end

    def login
        data = JSON.parse(request.raw_post)
        user = User.find_by(username: data['username'])
        user.password_digest == data['password'] ? (render json: UserSerializer.new(user).serialized_json) : (render json: null)
    end 


end
