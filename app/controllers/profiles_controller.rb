class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  
  def new
    @profile = Profile.new
  end
  
  def create
    @profile = current_user.profiles.new(profile_params)
    if @profile.save
      redirect_to new_profile_path, notice:"プロフィールを作成しました"
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @profile.user_id == current_user.id
      respond_to do |format|
        if @profile.update(profile_params)
          format.html { redirect_to new_profile_path, notice: "プロフィールを編集しました" }
        else
          format.html { render :edit }
        end
      end
    else
      redirect_to edit_profile_path, notice: "You don't have permission."
    end
  end
  
  def destroy
    if @profile.user_id == current_user.id
    @profile.destroy
      msg = "Profile was successfully destroyed."
    else
      msg = "You don't have permission"
    end
    respond_to do |format|
      format.html { redirect_to new_profile_path, notice: msg }
    end
  end
  
  private
  
  def blog_params
    params.require(:profile).permit(:introduce, :picture, :picture_cache, :number)
  end
  
  def set_profile
    @profile = Profile.find(params[:id])
  end
end
