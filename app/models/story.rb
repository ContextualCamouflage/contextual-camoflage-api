class Story < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :anecdote
end
