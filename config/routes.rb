Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_for :admins

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get '/admins' => 'users#admins', as: 'admins'
  get '/member' => 'users#member', as: 'member'
  get '/command_center/super_admin' => 'users#super_admin', as: 'super_admin'
#  root to: "users#super_admin"
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
