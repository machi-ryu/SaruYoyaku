Rails.application.routes.draw do

  devise_for :users
  #root 'users#mypage'
  root 'sarus#index'
  resources :users do
    collection do
      get :mypage
    end
  end
  resources :places
  resources :sarus do
    collection do
      post :search
    end
  end
  resources :reserves

end
