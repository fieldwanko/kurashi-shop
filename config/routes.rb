Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :sell_users,controllers: {
  sessions:   'sell_users/sessions' ,
  passwords:    'sell_users/passwords' ,
  registrations:    'sell_users/registrations'
  }
  devise_for :users, controllers: {
  sessions:   'users/sessions' ,
  passwords:    'users/passwords' ,
  registrations:    'users/registrations'
  }
  devise_for :admins,controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  resources :users, only:[:show,:update,:destroy] do
    resource :carts,only:[:update,:show]
    resource :address_menus,only:[:create,:new,:destroy]
    get "/:seacret_key/user_requests" => "user_requests#index",as: "user_requests"
  end

  namespace :sell_users do
    resources :products, only:[:new,:create,:update,:edit,:index,:show,:destroy]
    resources :order_appends,only:[:index,:update]
    resources :order_details,only:[:update]
    resources :present_appends, only:[:index,:update]
  end

  resources :user_requests,only:[:destroy]
  resources :carts, only:[:destroy]
  resources :order_details, only:[:show,:index]
  resources :order_appends, only:[:create,:show,:update]
  resources :present_appends, only:[:create,:show,:update]
  resources :coupons,only:[:destroy]
  resources :products, only:[:index,:destroy,:show] do
    resource :carts, only:[:create]
    resource :user_requests, only:[:create]
  end

  namespace :admins do
    resources :users,only:[:index,:destroy]
    resources :sell_users,only:[:index,:destroy]
    resources :products,only:[:index,:destroy]
    resources :coupons,only:[:new,:create]
  end

  # get "/" => "products#index",as: "root"
  get "/sell_item" => "home#sell_item",as: "sell_item"
  get "/" => "home#top",as: "root"
  get "/success" => "home#success",as: "success"
  get "/master" => "home#master",as: "master"
  get "/present" => "home#present",as: "present"

end
