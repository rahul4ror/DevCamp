Rails.application.routes.draw do
  root 'pages#home'
  resources :portfolios
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs

end
