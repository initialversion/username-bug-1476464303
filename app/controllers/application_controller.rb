class ApplicationController < ActionController::Base
  before_action :authenticate_merchant!

  protect_from_forgery with: :exception
end
