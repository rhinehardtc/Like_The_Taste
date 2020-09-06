class RecipesController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def index
        recipes = Recipe.all
        render json: recipes, :include => [:ratings, :ingredients, :tags]
    end

    def show
        recipe = Recipe.find_by(id: params[:id])
        recipe.save
        
        render json: recipe, :include => [:ratings, :ingredients, :tags]
    end

    def search
        recipes = Recipe.joins(ingredients: [:ingredients]).where("ingredients.id" => params[:query[:includedIngredients]])

        render json: recipes, :include => [:ratings, :ingredients, :tags]
    end

    private
        def search_params
            params.require(:query).permit!
        end
end
