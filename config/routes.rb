Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :submissions, only: [:create, :index]
      resources :anecdotes, only: [:create]
      get '/anecdotes/random', to: 'anecdotes#random'
      resources :illnesses, only: [:index, :show]
      resources :researches, only: [:create]
    end
  end
end
