Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/animals/new", to: "animals#new"
  post "/animals", to: "animals#create"

  get "/animals", to: "animals#index"
  get "/animals/:id", to: "animals#show", as: "animal"

  get "/animals/:id/edit", to: "animals#edit", as: "edit_animal"
  patch "/animals/:id", to: "animals#update"

  delete "/animals/:id", to: "animals#delete", as: "delete_animal"
end
