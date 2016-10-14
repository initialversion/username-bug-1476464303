Rails.application.routes.draw do
  root :to => "stores#index"
  # Routes for the Store resource:
  # CREATE
  get "/stores/new", :controller => "stores", :action => "new"
  post "/create_store", :controller => "stores", :action => "create"

  # READ
  get "/stores", :controller => "stores", :action => "index"
  get "/stores/:id", :controller => "stores", :action => "show"

  # UPDATE
  get "/stores/:id/edit", :controller => "stores", :action => "edit"
  post "/update_store/:id", :controller => "stores", :action => "update"

  # DELETE
  get "/delete_store/:id", :controller => "stores", :action => "destroy"
  #------------------------------

  devise_for :merchants
  # Routes for the Merchant resource:
  # READ
  get "/merchants", :controller => "merchants", :action => "index"
  get "/merchants/:id", :controller => "merchants", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
