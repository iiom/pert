Rails.application.routes.draw do
  root 'homes#index'

  resources :goals do
    member do
      get :ar
      # get :pre_archived
      # patch :archived
      # put :archived
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
