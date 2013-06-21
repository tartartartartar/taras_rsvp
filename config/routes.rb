Wedding::Application.routes.draw do
  
  get "static_pages/home"
  match '/', to: 'static_pages#home'
  match '/home', to: 'static_pages#home'
  match '/root', to: 'static_pages#home'
  
  get "static_pages/rsvp"
  match '/rsvp', to: 'static_pages#rsvp'
  
  get "static_pages/contact"
  match '/contact', to: 'static_pages#contact'


  resources :comments #, only: [:create, :destroy, :index]
  # match '/comments', to: 'comments#index'
  # match '/delete', to: 'comments#destroy'
end
