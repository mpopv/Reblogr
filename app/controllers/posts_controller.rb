class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "#{@post.title} was successfully published."
      redirect_to post_path(@post)
    else
      # Throws an undefined method error for 'error'
      # flash[:alert] = @post.error.full_messages
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "#{@post.title} was successfully updated."
      redirect_to post_path(@post)
    else
      # Throws an undefined method error for 'error'
      # flash[:alert] = @post.error.full_messages
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "The post was deleted."
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :text, :header_type, :header_url)
    end
end
