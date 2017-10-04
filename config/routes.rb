Rails.application.routes.draw do
  
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :components
  resources :arcades
  resources :orders
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }

    root 'pages#home'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
