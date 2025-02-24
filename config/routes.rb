Rails.application.routes.draw do
  get 'entries/new'
  get 'entries/create'
  get 'places/index'
  get 'places/show'
  get 'places/new'
  get 'places/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  # Routes for places
  resources :places do
    resources :entries, only: [:new, :create]
  end

root "places#index"
end
