Rails.application.routes.draw do
  resources :contact_forms
  resources :schedules
  resources :corporate_offers
  resources :offered_formats
  resources :pre_natals
  resources :yoga_styles
  resources :teacher_cvs
  devise_for :users
  root to: "pages#home"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :home_page_contents, only: [:new, :create, :edit, :update, :index]
end
