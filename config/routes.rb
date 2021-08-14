Rails.application.routes.draw do
  # root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :shops, only: [ :index, :show, :edit, :create, :new, :update] do
    resources :menus, only: [ :new, :create ]
  end
end
