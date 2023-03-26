Rails.application.routes.draw do
  devise_for :users,
   defaults: { format: :json },
   controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cultures
  resources :spawns
  resources :blocks
end
