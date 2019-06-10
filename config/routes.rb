Rails.application.routes.draw do
  root 'homes#index'

  resources :goals do
    member do
      get :ar
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # суть вопроса в том что бы реализовать такие-же маршруты, один в один
  # get 'goals/:id/set_fact_day', to: 'goals#set_fact_day', as: 'set_fact_day_goal'
  # patch 'goals/:id/set_fact_day', to: 'goals#update_fact_day'
  # put 'goals/:id/set_fact_day', to: 'goals#update_fact_day'
end
