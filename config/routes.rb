Rails.application.routes.draw do
  get 'abouts/top'
  get 'users/show'
  get 'users/update'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'homes#top'
end
