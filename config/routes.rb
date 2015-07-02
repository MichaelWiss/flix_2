Rails.application.routes.draw do
  

  resources :genres

  get 'signup' => 'users#new'
  get "signin" => "sessions#new"

  resources :users
  resource :session

 # get "movies/filter/hits" => "movies#index", scope: "hits"
 # get "movies/filter/flops" => "movies#index", scope: "flops"

 get 'movies/filter/:scope' => "movies#index", as: :filtered_movies

  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end
end
