Rails.application.routes.draw do
  resources :curriculums
  devise_for :users
  root 'home#index'
end
