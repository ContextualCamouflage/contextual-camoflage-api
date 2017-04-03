class AnecdoteController < ActionController::API

def create
  @anecdote  = Anecdote.new(anecdote_params)

#cookie, illness, relationship
private
  def anecdote_params
    params.require(:anecdote).permit(:body, :cookie)
  end
end
