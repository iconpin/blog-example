Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pages, only: [:index, :show] do
    # Nested routes and resources
    # get :authors, to: "authors#index"
  end

  resources :authors, only: [:show]
end
