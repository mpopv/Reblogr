class UsersController < ApplicationController
#before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts

    # why the XML here? is this a relic of using a scaffold generator?
    # in general, try not to keep any code around that isn't strictly necessary
    # as it adds up quickly and makes a codebase harder to read
    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end


  # these two actions aren't used (according to your routes), so they should be
  # removed!
  def new

  end

  def save

  end

end
