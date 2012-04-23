Alquiler::Application.routes.draw do
  devise_for :users

  root :to => "pages#home"
  resources :alkilers

  match "/contacts/:importer" => "alkilers#new"
  match "/contacts/:importer/callback" => "alkilers#new"

  match "/home" => "pages#home", :as => :home
  match "/encuesta" => "pages#encuesta"
  match "/contactenos" => "pages#contactenos", :as => :contact
  match "/enviando" => "pages#contactenos", :as => :send_contact
  match "/somos" => "pages#somos"
end
