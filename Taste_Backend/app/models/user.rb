class User < ApplicationRecord
    has_many :lists, :dependent => :destroy
    has_many :list_recipes, through: :lists

    has_many :ratings, :dependent => :destroy
    has_many :recipes, through: :ratings
end
