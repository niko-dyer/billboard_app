Rails.application.routes.draw do
  devise_for :users
  
  resources :billboards do
    resources :artists do
      resources :songs
    end
  end
  

  root 'billboards#index'
end
