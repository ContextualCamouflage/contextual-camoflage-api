Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # MOAR routes :D
    end
  end
end
