Rails.application.routes.draw do

get 'signup' => 'users#new'
root 'static_page#index'
get 'login' => 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' => 'sessions#destroy'
resources :users
resources :posts, only: [:create, :destroy]
end



