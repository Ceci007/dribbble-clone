Rails.application.routes.draw do
  resources :shots do 
    resources :comments
  end
  devise_for :users, :controllers => { :registrations => "registrations" }
  root "shots#index"
end
