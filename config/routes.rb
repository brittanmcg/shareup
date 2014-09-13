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

  devise_scope :user do 
    get '/api/current_user' => 'users/sessions#show_current_user'
  end

end
