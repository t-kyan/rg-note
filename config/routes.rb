Rails.application.routes.draw do
  devise_scope :user do
    root to: 'devise/sessions#new'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  devise_for :users
  resources :customers, only: [:index, :new, :create, :show, :edit, :update]
end