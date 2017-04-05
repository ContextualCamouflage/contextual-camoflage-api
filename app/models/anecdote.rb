class Anecdote < ApplicationRecord
  belongs_to :submission, :foreign_key => :cookie

  private # should these methods be private??
    def random_anecdote(data)
      
    end

end
