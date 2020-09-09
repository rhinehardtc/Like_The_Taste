class ListRecipesController < ApplicationController
    def index
        list_recipes = ListRecipe.all
        render json: list_recipes
    end

    def show
        list_recipe = ListRecipe.find_by(id: params[:id])
        list_recipe.save
        
        render json: list_recipe
    end

    def create
        if !ListRecipe.find_by(list_id: params[:list_id], recipe_id: params[:recipe_id])
            list_recipe = ListRecipe.new(list_recipe_params)
            if list_recipe.valid?
                list_recipe.save
                render json: list_recipe
            end
        else
            render json: {status: "error", code: 3434, message: 'recipe already exists in current list'}
        end
    end

    def destroy
        list_recipe = ListRecipe.find_by(id: params[:id])
        list_recipe.destroy

        render json: ListRecipe.all
    end

    private
    def list_recipe_params
        params.require(:list_recipe).permit(:id, :list_id, :recipe_id)
    end
end
