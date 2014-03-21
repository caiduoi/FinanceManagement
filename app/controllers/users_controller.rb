class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      sign_in @user
      redirect_to @user
      flash[:success] = "Created successfully"
    else
      render "new"
    end
  end
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find params[:id]
  end
  
  def edit
    @user = User.find params[:id]
  end
  
  def update
    @user = User.find params[:id]
    if !@user.nil?
      if @user.update_attributes user_params
        redirect_to @user
        flash[:success] = "Updated successfully"
      else
        render "edit"
      end
    else
      redirect_to root_path
    end
  end
  
  def destroy
    @user = User.find params[:id] 
    if !@user.nil?
      if @user.destroy
        redirect_to users_path
        flash[:success] = "Destroyed successfully"
      else
        redirect_to users_path
        flash[:error] = "Destroyed fail"
      end
    else
      redirect_to root_path
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end