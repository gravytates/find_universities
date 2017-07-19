Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :universities do
    resources :reviews
  end

  get "/name_search" => "universities#index"


end
