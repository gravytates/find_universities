Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "home#index"
  resources :universities
  resources :reviews


  get "/name_search" => "universities#index"
  get "/description_search" => "universities#index"
  get "/population_search" => "universities#index"
  get "/mascot_search" => "universities#index"

end
