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

    def create
        list = List.new(list_params)
        if list.valid?
            list.save
            render json: list, :include => [:recipes, :user]
        else
            render json: { message: list.errors.messages }
        end
    end

    def destroy
        list = List.find_by(id: params[:id])
        list.destroy

        render json: List.all, :include => [:recipes, :user]
    end

    private
    def list_params
        params.require(:list).permit(:id, :title, :user_id)
    end
end
