Rails.application.routes.draw do
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  devise_for :users
  resources :customers, only: [:index, :new, :create]
end