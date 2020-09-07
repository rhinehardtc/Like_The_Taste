class SessionsController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user
        else
            render json: {message: "Invalid Login"}
        end
    end

    def logout
        session[:user_id] = nil
        render json: {message: "Logout Successful"}
    end

    def check_login
        if session[:user_id]
            user = User.find(session[:user_id])
            render json: user
        else
            render json: {message: "Login session ended"}
        end
    end
end