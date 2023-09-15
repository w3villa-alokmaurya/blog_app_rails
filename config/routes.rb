Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  get "/articles", to: "articles#index"
  post "/articles/create_article", to: "articles#create"
  get "/articles/create_article", to: "articles#new"
  get "/articles/:slug", to: "articles#show"
  put "/articles/:slug/edit", to: "articles#update", as: "articles_update"
  get "/articles/:slug/edit", to: "articles#edit"
  delete "/articles/:id", to: "articles#destroy" , as: "articles_destroy"
  




  get "/categories", to: "category#index"
  post "/categories/create_category", to: "category#create"
  get "/categories/create_category", to: "category#new"
  get "/category/:id", to: "category#show"
  put "/category/:id/edit", to: "category#update", as: "category_update"
  get "/category/:id/edit", to: "category#edit"
  delete "/category/:id", to: "category#destroy"

  # resources :category




  # resources :articles
  # resources :users
  # resources :category
end
