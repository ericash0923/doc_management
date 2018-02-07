Rails.application.routes.draw do
  devise_for :admins, path: 'admin', skip: :registrations
  
  get 'admin' => 'admin/topics#index'
  get 'search' => 'search#index'
  
  resources :documents
  resources :topics, :only => [:index, :show]
  
  namespace :admin do
    resources :documents
    
    resources :topics do
      member do
        get :toggle_status
      end
    end
  end
  
  root to: 'topics#index'
end
