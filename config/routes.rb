Rails.application.routes.draw do
  devise_for :merchants
  # Routes for the Merchant resource:
  # READ
  get "/merchants", :controller => "merchants", :action => "index"
  get "/merchants/:id", :controller => "merchants", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
