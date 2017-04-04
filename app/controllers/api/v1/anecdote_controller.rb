module Api
  module V1
    class AnecdoteController < ActionController::API

    def index
      # JSON payload: Frontend will send you an illness, return a single anecdote that matches that illness
    end

    def create
      @anecdote  = Anecdote.create(anecdote_params)
    end

    private
      def anecdote_params
        params.require(:anecdote).permit(:body, :cookie)
      end
    end
  end
end
