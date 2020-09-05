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
        recipes = Recipe.joins(:ingredients).where(:ingredients => {:id => params[:includedIngredients]})
        # recipes = params[:includedIngredients].each do |name|
        #     Recipe.all.select do |recipe|
        #         recipe.ingredients.each do |ing| 
        #             ing.name === name
        #         end
        #     end
        # end

        render json: recipes, :include => [:ratings, :ingredients, :tags]
    end
end
