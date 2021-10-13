Rails.application.routes.draw do
  devise_for :users
  root to:'homes#top'
  get 'users/show'
  get 'users/edit'
  get 'abouts/top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :books, only: [:index, :create, :show, :edit, :destroy]
  resource :users, only: [:index, :show, :edit, :update]
end
