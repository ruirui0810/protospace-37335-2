class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototype
  end

end


private

  def user_params
    (params.require(:user).permit(:email, :password, :user_name, :email, :profile, :occupation, :position))
  end