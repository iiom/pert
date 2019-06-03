Rails.application.routes.draw do
  root 'homes#index'

  resources :goals
  # get "set_duration" => "goals#set_duration"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
