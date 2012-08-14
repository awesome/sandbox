Sandbox::Application.routes.draw do

  #static pages
  root :to => 'pages#main'
  get "main" => "pages#main"
  #get "pages/main"


  #devise paths
  devise_for :users
  # get  'users/sign_up'   => 'users/registrations#new',        :as => 'new_user_registration'
# get  'recruiter/sign_up' => 'users/registrations#new_recruiter, :as => 'new_recruiter_registration'
# post 'recruiter/sign_up' => 'users/registrations#create',     :as => 'recruiter_registration'
# get  'members/sign_up' => 'users/registrations#new_member', :as => 'new_member_registration'
# post 'members/sign_up' => 'users/registrations#create',     :as => 'member_registration'




  #scaffold resources
  resources :brands

  resources :products do
    get :autocomplete_brand_name, :on => :collection
  end



end
