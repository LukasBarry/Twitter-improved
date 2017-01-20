class LikesController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @tweet.likes.where(user_id: current_user.id).first_or_create
    redirect_to request.referrer, notice: "You've liked this Tweet"
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @tweet.likes.find_by(user_id: current_user.id).destroy
    redirect_to request.referrer
  end
end
