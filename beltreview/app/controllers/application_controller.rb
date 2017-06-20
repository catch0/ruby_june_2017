class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    def current_user
       User.find(session[:user_id]) if session[:user_id] 
    end
    
    def user_authorized
       redirect_to '/' unless session[:user_id] 
    end
  protect_from_forgery with: :exception
end
