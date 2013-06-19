JerkTest::Application.routes.draw do

  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :blogs
  resources :jerkblogs
  resources :artworks
  resources :categories

  get "static/contact", as: 'contact'

  root to: 'static#home'
end