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
        user = User.new({username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation]})
            
        if user.valid?
            user.save
            render json: user
        else
            render json: { message: user.errors.messages }
        end
    end

    private
        def user_params
            params.require(:username, :password, :password_confirmation).permit!
        end
end
