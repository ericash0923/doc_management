Rails.application.routes.draw do
  resources :documents
  resources :topics
  
  root to: 'topics#index'
end
