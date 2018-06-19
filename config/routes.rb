Rails.application.routes.draw do

  resources :evaluations
  devise_for :users
  root 'home#index'

  get 'home/index'

  resources :teams do
    resources :events
  end
  resources :people
  resources :semesters
  resources :disciplines
  resources :contact
  resources :reports

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
