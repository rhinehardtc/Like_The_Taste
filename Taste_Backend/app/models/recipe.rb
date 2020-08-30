class Recipe < ApplicationRecord
    has_many :ratings, :dependent => :destroy
    has_many :users, through: :ratings

    has_many :list_recipes, :dependent => :destroy
    has_many :lists, through: :list_recipes

    has_many :recipe_ingredients, :dependent => :destroy
    has_many :ingredients, through: :recipe_ingredients

    has_many :recipe_tags, :dependent => :destroy
    has_many :tags, through: :recipe_tags
end
