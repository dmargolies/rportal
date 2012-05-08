Rportal::Application.routes.draw do
  resources :programs

  root :to => "home#index"
  devise_for :users

end
