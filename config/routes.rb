Rails.application.routes.draw do
  get 'confirmations/index'
  get 'confirmations/confirm'
  
  resources :jobs
  resources :positions
  resources :information
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'information#new', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
