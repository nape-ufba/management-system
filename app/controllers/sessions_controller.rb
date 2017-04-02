class SessionsController < ApplicationController
  layout 'auth'
  skip_before_filter :require_login

  def hash_password(password)
    BCrypt::Password.create(password).to_s
  end

  def test_password(password, hash)
    BCrypt::Password.new(hash) == password
  end

  def new
  end

  def create
    user = User.find { |u| u.email == user_params[:email] }
    if user && test_password(user_params[:password], user.encrypted_password)
      session.clear
      session[:user_id] = user.id
      if user.role_id == 2
        redirect_to '/admin/'
      else
        redirect_to '/'
      end
    else
      @error = 'Email ou senha incorretos '
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: 'Logged out!'
  end

  private
    def user_params
      params.permit(:password, :email)
    end
end
