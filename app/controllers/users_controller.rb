class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_blog, only: [:edit, :update]
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      format.html { redirect_to blogs_path, notice: "ブログを編集しました" }
    else
      format.html { render :edit }
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :username, :profile, :profile_cache, :remove_profile, :introduce, :number1, :email, :password, :password_confirmation)
  end
  
  def user_set
    @user = User.find(params[:id])
  end
end