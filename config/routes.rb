Rails.application.routes.draw do
  devise_for :users
  # get '/users/edit', to: 'users#edit'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
