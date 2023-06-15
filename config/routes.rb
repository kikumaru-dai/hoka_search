Rails.application.routes.draw do
  devise_for :users
  root 'hotels#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources 'hotels'
   # get '/users/edit', to: 'users#edit'
end
