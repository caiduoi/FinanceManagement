FinanceManagement::Application.routes.draw do
  
  root to: "static_pages#home"
  
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  namespace :admin do
    resources :m_currencies, only: [:index] do
      collection { post :import }
    end
    resources :m_category_types, only: [:index]
  end
  
  resources :users
  
  resources :sessions, only: [:new, :create, :destroy]
  
end
