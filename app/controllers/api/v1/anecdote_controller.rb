module Api
  module V1
    class AnecdoteController < ActionController::API

    def create
      @anecdote  = Anecdote.new(anecdote_params)
    end
    
    private
      def anecdote_params
        params.require(:anecdote).permit(:body, :cookie)
      end
    end
  end
end
