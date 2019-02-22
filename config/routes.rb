Rails.application.routes.draw do
  resources :billboards do
    resources :artists
  end
  
  resources :billboards do
    resources :songs
  end

  resources :artists do
    resources :songs
  end


  root 'billboards#index'
end
