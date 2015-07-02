Rails.application.routes.draw do
  

  resources :genres

  get 'signup' => 'users#new'
  get "signin" => "sessions#new"

  resources :users
  resource :session

 get "movies/filter/hits" => "movies#index", scope: "hits"

  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end
end
