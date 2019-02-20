Rails.application.routes.draw do
  root 'pages#home'
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'angular', to: 'portfolios#angular'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
    member do
      get 'blog_status'
    end
  end

end
