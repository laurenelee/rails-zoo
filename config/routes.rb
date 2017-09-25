Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/animals/new", to: "animals#new"
  post "/animals", to: "animals#create"

  get "/animals", to: "animals#index"
  get "/animals/:id", to: "animals#show", as: "animal"


end
