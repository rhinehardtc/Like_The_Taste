class RecipesController < ApplicationController
    def index
        recipes = Recipe.all
        render json: recipes, :include => [:ratings, :ingredients, :tags]
    end

    def show
        recipe = Recipe.find_by(id: params[:id])
        recipe.save
        
        render json: recipe, :include => [:ratings, :ingredients, :tags]
    end
end
