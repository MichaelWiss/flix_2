Rails.application.routes.draw do
  get 'signup' => 'users#new'

  resources :users
  resource :session

 

  root "movies#index"
  resources :movies do
  	resources :reviews
  end
end
