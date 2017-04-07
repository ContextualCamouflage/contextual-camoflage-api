module Api
  module V1
    class AnecdotesController < ApiController

    def index
    end

    def create
      @anecdote  = Anecdote.create(anecdote_params)
    end

    def random
      # JSON payload: Frontend will send you an illness, return a single anecdote that matches that illness
      if params[:illness]
        random = Anecdote.all.includes(:submission).where(submissions: {illness: params[:illness]}).sample
      else
        random = Anecdote.random
      end
      render json: random.to_json, status: 200
    end

    private
      def anecdote_params
        params.require(:anecdote).permit(:body, :cookie)
      end
    end
  end
end
