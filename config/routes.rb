Rails.application.routes.draw do
  root 'static_page#index'
  get 'signup' => 'users#new'
  resources :users
end
