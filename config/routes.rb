Rails.application.routes.draw do
  devise_for :admins, skip: [ :registrations ]
  devise_for :users
  resources :courses do
    resources :lessons
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")

  get "admin" => "admin#index"


  root "courses#index"
end