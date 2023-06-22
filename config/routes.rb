Rails.application.routes.draw do
  devise_for :users
  root 'hotels#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :hotels do
    collection do
      get 'search'
    end
  end
   # get '/users/edit', to: 'users#edit'
end
