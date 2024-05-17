Rails.application.routes.draw do
  devise_for :users
  resources :tasks do
    collection do
      get :import_form
      post :import
      get :index, defaults: { format: :html }
      get :index, defaults: { format: :xlsx }
    end
  end
  resources :makanans
  root 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
end
