class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :check_logged
  
  def check_logged
    if params[:controller] != 'welcome'
      if !current_user
        redirect_to root_path
      end
    end
  end
  
end
