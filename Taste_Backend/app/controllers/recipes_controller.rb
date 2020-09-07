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

    def search
        recipes = Recipe.all
        
        i_i = params[:query[:includedIngredients]]

        recipes.includes(:ingredients).select{|recipe| recipe.ingredients.select{|ingredient| i_i.include?(ingredient.id) }.length == i_i.length}

        render json: recipes, :include => [:ratings, :ingredients, :tags]
    end

    private
        def search_params
            params.require(:query).permit!
        end
end
