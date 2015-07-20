Rails.application.routes.draw do
 # devise_for :users, :controllers => {registrations: 'registrations'}
  devise_for :users, :controllers => {registrations: "devise/registrations"}
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
