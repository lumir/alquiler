Alquiler::Application.routes.draw do
  devise_for :users

  root :to => "pages#home"
  resources :alkilers

  match "/contacts/:importer" => "alkilers#new"
  match "/contacts/:importer/callback" => "alkilers#new"

  match "/home" => "pages#home", :as => :home
  match "/encuesta" => "pages#encuesta"
  match "/descargas" => "pages#descargas"
  match "/contactenos" => "pages#contactenos", :as => :contact
  match "/send_contact" => "pages#send_contact", :as => :send_contact
  match "/somos" => "pages#somos"
  match "/region" => "pages#region"
  match "/eventos" => "pages#eventos"
end
