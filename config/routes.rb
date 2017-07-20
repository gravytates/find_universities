Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :universities
  resources :reviews


  get "/name_search" => "universities#index"
  get "/description_search" => "universities#index"
  get "/population_search" => "universities#index"
  get "/mascot_search" => "universities#index"
  get "/paginate1" => "universities#index"
  get "/paginate2" => "universities#index"
  get "/paginate3" => "universities#index"
  get "/paginate4" => "universities#index"

end
