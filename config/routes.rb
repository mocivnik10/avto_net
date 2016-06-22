Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :admins, controllers: { sessions: 'admins/sessions'}


  namespace :admin do
    root 'dashboard#index'

    resources :cars
  end

  resources :cars, only: [:index, :show]

end
