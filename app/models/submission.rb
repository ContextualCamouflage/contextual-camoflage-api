class Submission < ApplicationRecord
  has_many :anecdotes
  has_many :researches
end
