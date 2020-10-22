Rails.application.routes.draw do
  resources :shots
  devise_for :users, :controllers => { :registrations => "registrations" }
  root "shots#index"
end
