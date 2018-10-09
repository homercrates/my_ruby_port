Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about' => 'pages#about', as: 'about'
  # so this get pulls from the controller / pages and in there is the method def about which pulls from view / pages /about.html.erb

  resources :things do
    resources :thingcomments
  end

  resources :articles do
    resources :comments
  end
  root 'welcome#index', as: 'home'
end
