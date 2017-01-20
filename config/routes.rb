Rails.application.routes.draw do
  get 'profiles/index'

  get 'profiles/show'

  devise_for :users

  # post 'tweets' => 'tweets#create'
  # get 'tweets/new' => 'tweets#new', as: 'new/tweet'
  # get 'tweets' => 'tweets#index'
  # get 'tweets/:id' => 'tweets#show', as: :tweet
  # get 'tweets/:id/edit' => 'tweets#edit', as: 'edit/tweet'
  # put 'tweets/:id' => 'tweets#update'
  # patch 'tweets/:id' => 'tweets#update'
  # delete 'tweets/:id' => 'tweets#destroy'
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles' => 'profiles#index'
  get 'feed' => 'profiles#feed'

  root 'tweets#index'

  resources :relationships, only: [:create, :destroy]

  resources :tweets do
    resource :like, only: [:create, :destroy]
  end
end
