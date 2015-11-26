class FollowingsController < ApplicationController
  def create
    # it would be a good idea to check for existing (duplicate) followings
    # before creating them. This could either happen here (or even better) as a
    # validation on the followings model
    @following = current_user.followings.build(follower_id: params[:follower_id])
    @following.save
    flash[:notice] = "Added follower."
    redirect_to root_url
  end

  def destroy
    @following = current_user.followings.find(params[:id])
    @following.destroy
    flash[:notice] = "Removed following."
    redirect_to current_user
  end
end
