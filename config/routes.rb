Alquiler::Application.routes.draw do
  devise_for :users

  root :to => "pages#home"
  resources :alkilers

  match "/contacts/:importer" => "alkilers#new"
  match "/contacts/:importer/callback" => "alkilers#new"

  match "/home" => "pages#home"
  match "/encuesta" => "pages#encuesta"
end
