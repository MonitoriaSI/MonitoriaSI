Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  get 'home/index'

  resources :teams do
    resources :events
  end
  resources :people
  resources :semesters
  resources :disciplines

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
