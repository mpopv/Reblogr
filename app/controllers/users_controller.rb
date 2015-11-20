class UsersController < ApplicationController
#before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end

  def new

  end

  def save

  end
  
end
