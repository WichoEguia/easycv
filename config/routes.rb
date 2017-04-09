Rails.application.routes.draw do
  devise_for :recruits, controllers: {
    sessions: 'recruits/sessions'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :curriculums
  root 'home#index'
  get 'recruits/root', to: 'home#search'
end
