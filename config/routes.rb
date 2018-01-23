Rails.application.routes.draw do
  devise_for :admins, path: 'admin', skip: :registrations
  
  resources :documents
  resources :topics
  
  root to: 'topics#index'
end
