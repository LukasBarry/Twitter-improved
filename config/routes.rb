Rails.application.routes.draw do
  devise_for :users

  post 'tweets' => 'tweets#create'
  get 'tweets/new' => 'tweets#new', as: 'new/tweet'
  get 'tweets' => 'tweets#index'
  get 'tweets/:id' => 'tweets#show', as: :tweet
  get 'tweets/:id/edit' => 'tweets#edit', as: 'edit/tweet'
  put 'tweets/:id' => 'tweets#update'
  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy'

  root 'tweets#index'

end
