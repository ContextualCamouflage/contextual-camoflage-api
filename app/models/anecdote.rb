class Anecdote < ApplicationRecord
  belongs_to :story
  belongs_to :illness
end
