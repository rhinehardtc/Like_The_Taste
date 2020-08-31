class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, :include => [:ratings, :lists]
    end

    def show
        user = User.find_by(id: params[:id])
        user.save
        
        render json: user, :include => [:ratings, :lists]
    end

    def create
        user = User.create({username: params[:username], password: params[:password]})
            session[:user_id] = user.id
            render json: user
    end
end
