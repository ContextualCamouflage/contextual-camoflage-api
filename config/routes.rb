Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :submissions, only: [:create, :index]
      resources :anecdotes, only: [:create, :index]
      resources :researches, only: [:create]
    end
  end
end
