Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/houses" => "houses#index"
  get "/houses/:id" => "houses#show"
  post "/houses" => "houses#create"
  patch "/houses/:id" => "houses#update"
end
