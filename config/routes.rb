Rails.application.routes.draw do

  resources :faults

  resources :planes do
    resources :faults, only: [:index, :show]
  end

  resources :mechanics do
    resources :faults
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
