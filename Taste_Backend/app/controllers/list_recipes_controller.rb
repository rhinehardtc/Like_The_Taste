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
        list_recipe = ListRecipe.new(list_recipe_params)
        if list_recipe.valid?
            list_recipe.save
            render json: list_recipe
        else
            render json: { message: list_recipe.errors.messages }
        end
    end

    private
    def list_recipe_params
        params.require(:list_recipe).permit(:id, :list_id, :recipe_id)
    end
end
