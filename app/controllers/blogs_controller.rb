class BlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blogs = Blog.all
  end
  
  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end
  
  def create
    @blog = current_user.blogs.new(blog_params)
    if @blog.save
      redirect_to new_blog_path, notice:"ブログを作成しました"
    else
      render 'new'
    end
  end
  
  def confirm
    @blog = current_user.blogs.new(blog_params)
    render :new if @blog.invalid?
  end
  
  def show
     @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end
  
  def edit
  end
  
  def update
    if @blog.user_id == current_user.id
      respond_to do |format|
        if @blog.update(blog_params)
          format.html { redirect_to blogs_path, notice: "ブログを編集しました"}
        else
          format.html{ render :edit }
        end
      end
    else
      redirect_to edit_blog_path, notice: "You don't have permission."
    end
  end
  
  def destroy
    if @blog.user_id == current_user.id
    @blog.destroy
      msg = "ブログは削除されました"
    else
      msg = "許可されていません"
    end
    redirect_to blogs_path, notice:"ブログを削除しました！"
  end
  
   def person
    @blogs = Blog.all
  end
  
  def favorite
    @blogs = Blog.all
    
  end
  
  private
  
  def blog_params
    params.require(:blog).permit(:content, :image, :image_cache)
  end
  
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
