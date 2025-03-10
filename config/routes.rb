Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  # Routes for places
  resources :places do
    resources :entries, only: [:new, :create]
  end

root "places#index"
end
