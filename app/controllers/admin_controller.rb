class AdminController < ApplicationController
  layout "admin" 
  before_action :require_admin

  def require_admin    
    #   redirect_to root_path
  end
end