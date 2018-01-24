Rails.application.routes.draw do
  devise_for :admins, path: 'admin', skip: :registrations
  
  get 'admin' => 'admin/topics#index'
  
  resources :documents
  resources :topics
  
  namespace :admin do
    resources :topics
  end
  
  root to: 'topics#index'
end
