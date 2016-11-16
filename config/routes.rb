Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#index (show everything)
get "/index", to: "albums#index"
#new (form for creating new)
get "/albums/new", to: "albums#new"
#create (message saying created)
post "/albums", to: "albums#create"
#show (show an indvidual album)
get "/albums/:id", to: "albums#show"
#destroy (message saying destroyed)
delete "/albums/:id/", to: "albums#destroy"
#edit (form for updating)
get '/albums/:id/edit', to: "albums#edit"
#update (same as create except saying updated)
patch '/albums/:id', to: "albums#update"




end
