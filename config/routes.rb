JerkTest::Application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'

  root to: 'static#home'

  get 'admin' => 'admin#index'
  get 'contact' => 'static#contact'
  get 'test' => 'static#test'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :media, :users

  resources :blogs do
    collection{ post :sort }
  end
  
  resources :artworks do
    collection{ post :sort }
  end
  
  resources :categories do
    collection{ post :sort }
  end

end