Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :meubles, only:[:index, :show, :new, :create] do
    resources :locations, only: [:create]

    collection do
      post 'filter', to: 'meubles#filter'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
