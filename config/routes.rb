Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games, only: %i[index create new show], param: :slug
  post '/games/find', to: 'games#find'
end
