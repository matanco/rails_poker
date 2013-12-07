class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include ApplicationHelper
  
  #before_filter :check_logged  
  
  def check_logged
    if check_controller(params[:controller])        
      if !current_user
        redirect_to root_path
      end
    end
  end
  
end
