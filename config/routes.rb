Rails.application.routes.draw do
  devise_for :users
  #rutas de controlador pages
  root to: 'pages#home'  
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  # rutas de controlador services
  get "/list", to: "services#list"
  post "/create", to: "services#create"
  get "/show/:id", to: "services#show"
  # rutas de controlador blog_posts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
