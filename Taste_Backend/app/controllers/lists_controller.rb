class ListsController < ApplicationController
    def index
        lists = List.all
        render json: lists, :include => [:recipes, :user]
    end

    def show
        list = List.find_by(id: params[:id])
        list.save
        
        render json: list, :include => [:recipes, :user]
    end
end
