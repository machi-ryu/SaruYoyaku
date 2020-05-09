Rails.application.routes.draw do

  devise_for :users
  root 'users#mypage'
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

end
