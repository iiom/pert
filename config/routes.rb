Rails.application.routes.draw do
  resources :archives
  root 'homes#index'

    resources :goals do
      member do
        get :set_duration
        patch :set_duration
      end
    end
  # get "set_duration/with_goals/:id", to: "goals#set_duration", as: 'set_duration'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
