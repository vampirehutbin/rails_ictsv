Rails.application.routes.draw do
  get 'users/show'
  get 'static_pages/home'
  root to: 'static_pages#home'
  resources :event_proofs
  resources :event_comments
  resources :event_registrations
  resources :events
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
