Rails.application.routes.draw do

  devise_for :users, controllers: {
  omniauth_callbacks: "omniauth_callbacks"
  }
  root "top#index"
  get "/answers/:id", to: "answers#new"
  patch "/questions/:id", to: "questions#update"
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only:[:create, :show, :new]
  resources :answers, only: [:new, :create, :edit, :update]
  resources :participants, only: [:create, :update, :show, :destroy]
  resources :asks, only: [:create, :update, :show]


end

