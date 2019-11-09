Rails.application.routes.draw do
  get 'pages/index'
  resources :images
  resources :events
  resources :categories
  resources :pricings
  resources :promotions
  root to: "pages#index"

  Rails.application.routes.draw do
    devise_for :users, controllers: {
      registrations: 'users/registrations'
    }
  end

  get '/events' => 'events#index'
  # post '/events/redirect', to: 'events#redirect_to_search', as: 'event_search_redirect'
  get 'my_events' => 'events#your_events'

  post 'event/:id/join', to: 'events#join', as: 'join_event' 

  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
