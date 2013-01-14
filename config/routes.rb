HidsUi::Application.routes.draw do
  match '/login' => "session#new", :via => :get
  match '/login' => "session#create", :via => :post
  match '/logout' => "session#destroy"

  get '/dashboard' => "dashboard#show"

  namespace 'widgets' do
    get '/top_alerts' => "top_alerts#show"
  end

  resources :alerts

  root :to => 'dashboard#show'
end
