Rails.application.routes.draw do
  resources :plane_faults
  resources :faults
  resources :planes
  resources :mechanics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
