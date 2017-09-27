Rails.application.routes.draw do
  resources :components
  resources :arcades
  resources :orders
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }

    root 'components#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
