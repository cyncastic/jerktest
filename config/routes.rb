JerkTest::Application.routes.draw do

  root to: 'blogs#index'

  get 'admin' => 'admin#index'
  get 'contact' => 'static#contact'
  get 'test' => 'static#test'

  resources :users, :blogs, :blog_images
  
  resources :media, except: :show

  resources :artworks do
    collection{ post :sort }
  end

  resources :categories do
    collection{ post :sort }
  end
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  mount Ckeditor::Engine => '/ckeditor'

end