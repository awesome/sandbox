Sandbox::Application.routes.draw do

  devise_for :users

  get "pages/main"

  #static pages
  root :to => 'pages#main'
  get "main" => "pages#main"


  resources :brands

  resources :products do
    get :autocomplete_brand_name, :on => :collection
  end



end
