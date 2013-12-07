RailsPoker::Application.routes.draw do    
  devise_for :users
  resources :play do
    member do
      get :status
      get :bet      
      get :confirm
    end
  end
  root :to => 'welcome#index'
end
