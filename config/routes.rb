Alquiler::Application.routes.draw do
  devise_for :users

  root :to => "alkilers#index"
  resources :alkilers

  match "/contacts/:importer" => "alkilers#new"
  match "/contacts/:importer/callback" => "alkilers#new"
end
