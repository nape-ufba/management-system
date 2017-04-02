class AdminController < ApplicationController
  layout "admin" 
  before_action :require_admin

  def require_admin    
    if current_user.role.slug != "adm"
      redirect_to "/"
    end
  end
end