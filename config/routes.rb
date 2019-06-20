Rails.application.routes.draw do
  resources :events
  resources :user_vacations
  resources :users
  resources :vacations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
