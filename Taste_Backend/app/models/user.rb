class User < ApplicationRecord
    has_many :lists, :dependent => :destroy
    has_many :list_recipes, through: :lists

    has_many :ratings, :dependent => :destroy
    has_many :recipes, through: :ratings

    validates :username, presence: true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness: true

    validates :password, presence: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
end
