Rails.application.routes.draw do
  get 'abouts/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'homes#top'
  resource :books, only: [:index, :create, :show, :edit, :destroy]
  resource :users, only: [:index, :show, :edit, :update]
end
