Rails.application.routes.draw do
  
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :components
  resources :arcades do
    member do
      get :add_components 

    end
  end
  resources :orders
    
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
      
    }

    root 'pages#home'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end