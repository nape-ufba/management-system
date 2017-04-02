class UsersController < ApplicationController
  layout 'auth', only: [:new]
  skip_before_filter :require_login, only: [:new, :create]

  def hash_password(password)
    BCrypt::Password.create(password).to_s
  end

  def new
    @user = User.new
    @user_types = UserType.all
    @special_needs = SpecialNeed.all
  end

  def create
    @user = User.new(user_params.except("password"))    
    @user.encrypted_password = hash_password(user_params[:password])
    @user.role_id = 1    

    if @user.save
      session.clear
      session[:user_id] = @user.id
      redirect_to '/', notice: 'Usuário criado com sucesso!'
    else
      render :new
    end
    
  end

  private
    def user_params
      params.permit(:name, :password, :email, :course_id, :user_type_id, :role_id, :special_need_id, :phone, :document_number, :encrypted_password)
    end
end
