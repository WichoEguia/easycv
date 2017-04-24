Rails.application.routes.draw do
  devise_for :recruits, controllers: {
    sessions: 'recruits/sessions'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :curriculums
  resources :lists
  root 'home#index'
  get 'recruits/root', to: 'home#search'
  get 'appointment', to: 'curriculums#date_appointment'
  get 'diary', to: 'home#diary'
  get 'remove_date_appointment', to: 'curriculums#remove_date_appointment'
end
