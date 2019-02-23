Rails.application.routes.draw do
  resources :billboards do
    resources :artists do
      resources :songs
    end
  end
  

  root 'billboards#index'
end
