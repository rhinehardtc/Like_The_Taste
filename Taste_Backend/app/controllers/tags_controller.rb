class TagsController < ApplicationController
    def index
        tags = Tag.all
        render json: tags
    end

    def show
        tag = Tag.find_by(id: params[:id])
        tag.save
        
        render json: tag
    end
end
