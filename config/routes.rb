Hht::Application.routes.draw do
  resources :option_cards


  resources :projects


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end