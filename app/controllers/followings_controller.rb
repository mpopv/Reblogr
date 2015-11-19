class FollowingsController < ApplicationController
  def create
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
