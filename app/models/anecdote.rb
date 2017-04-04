class Anecdote < ApplicationRecord
  belongs_to :submission, :foreign_key => :cookie
end
