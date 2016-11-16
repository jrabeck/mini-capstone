Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/albums', to: "albums#albums"

get 'albums/index', to: "albums#index"
get '/album/:id', to: "albums#show"

get '/new', to: "albums#new"
post 'create', to: "albums#create"

get '/album/:id/album', to: "albums#album"
patch '/update/:id', to: "albums#album"

get "/albums/:id/", to: "albums#show"
delete "/albums/:id/", to: "albums#destroy"

end
