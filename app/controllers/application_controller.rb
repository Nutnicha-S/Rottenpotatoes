class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :set_current_user , :authenticate!
    
    def set_current_user
      # we exploit the fact that find_by_id(nil) returns nil
      @current_user ||= Moviegoer.find_by_id(:id => session[:user_id])
      # redirect_to login_path and return unless @current_user
    end 

    protected # prevents method from being invoked by a route

    def authenticate!
      unless @current_user
        redirect_to OmniAuth.login_path(:provider)
      end
    end 
end
