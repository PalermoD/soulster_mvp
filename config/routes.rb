Rails.application.routes.draw do

get 'signup' => 'users#new'
root 'static_page#index'
get 'login' => 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' => 'sessions#destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end

resources :posts, only: [:create, :destroy]
resources :relationships,       only: [:create, :destroy]
end



