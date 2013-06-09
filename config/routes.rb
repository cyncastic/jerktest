JerkTest::Application.routes.draw do
  resources :artworks

  resources :categories

  get "static/contact", as: 'contact'

  root to: 'static#home'
end
