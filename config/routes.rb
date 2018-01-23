Rails.application.routes.draw do
  devise_for :admins, path: 'admin', skip: :registrations
  
  resources :documents
  resources :topics
  
  namespace :admin do
    resources :topics
  end
  
  get 'admin' => 'admin/topics#index'
  
  root to: 'topics#index'
end
