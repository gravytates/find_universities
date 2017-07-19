Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :universities do
    resources :reviews
  end

  get "/name_search" => "universities#index"
  get "/description_search" => "universities#index"
  get "/population_search" => "universities#index"
  get "/mascot_search" => "universities#index"

end
