Shareup::Application.routes.draw do

  namespace :api do 
    resources :shares
  end

  get '/dashboard' => 'welcome#dashboard'
  root to: 'welcome#index'

  devise_for :users,
  :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

end
