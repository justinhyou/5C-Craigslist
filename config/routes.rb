Rails.application.routes.draw do
  get 'comments/new'
  get '/comments/new', :to => 'comments#new', :as => :comments
  #resources :comments, :path => ''
  get 'comments/create'

  mount Ckeditor::Engine => '/ckeditor'
  resources :categories, only: [:index, :show]
  resources :posts
  resources :users, except: [:index]

  get '/session/login', to: 'session#login', as:'login'
  post '/session/login', to: 'session#create'
  get '/session/logout', to: 'session#logout', as:'logout'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
