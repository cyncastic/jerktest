JerkTest::Application.routes.draw do

  resources :media


  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :blogs do
    collection{ post :sort }
  end
  resources :jerkblogs
  resources :artworks do
    collection{ post :sort }
  end
  
  resources :categories do
    collection{ post :sort }
  end

  get "static/contact", as: 'contact'

  root to: 'static#home'
end