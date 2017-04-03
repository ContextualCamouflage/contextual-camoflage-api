class Illness < ApplicationRecord
  has_many :stories
  has_many :anecdotes
  has_many :researches
end
