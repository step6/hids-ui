HidsUi::Application.routes.draw do
  match '/login' => "session#new", :via => :get
  match '/login' => "session#create", :via => :post
  match '/logout' => "session#destroy"

  resources :alerts

  root :to => 'static#home'
end
