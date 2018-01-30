Rails.application.routes.draw do
  devise_for :admins, path: 'admin', skip: :registrations
  
  get 'admin' => 'admin/topics#index'
  get 'search' => 'search#index'
  
  resources :documents
  resources :topics
  
  namespace :admin do
    resources :topics
    resources :documents
  end
  
  root to: 'topics#index'
end
