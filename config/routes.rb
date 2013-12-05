RailsPoker::Application.routes.draw do    
  devise_for :users
  resources :play
  root :to => 'welcome#index'
end
