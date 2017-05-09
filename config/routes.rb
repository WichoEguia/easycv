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
  get 'new/recruit', to: 'home#new_recruit'
  get 'new/recruit/create', to: 'home#create_recruit'
  get 'recruit/list', to: 'home#recruit_list'
  get 'dropcv', to: 'curriculums#drop_cv'
  get 'drop/recruit', to: 'home#drop_recruit'
end
