Rails.application.routes.draw do

  get 'sarus/index'
  get 'sarus/show'
  get 'sarus/new'
  get 'sarus/create'
  get 'sarus/edit'
  get 'sarus/update'
  devise_for :users
  root 'users#mypage'
  resources :users do
    collection do
      get :mypage
    end
  end
  resources :places
  resources :sarus

end
