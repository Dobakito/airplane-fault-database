Rails.application.routes.draw do
  root "sessions#home"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'mechanics#new'

  resources :mechanics
  resources :planes do
    resources :faults
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
