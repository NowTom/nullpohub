Nullpohub::Application.routes.draw do
  resources :events
  resources :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }, skip: :sessions, path_name: {sign_in: '/', sign_out: 'logout'}

  authenticated :user do
    root to: 'home#index', as: :user_root
  end
  root to: 'welcome#index'
end
