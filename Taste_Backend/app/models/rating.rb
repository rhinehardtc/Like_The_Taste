class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :user, presence: true
  validates :user, uniqueness: true
end
