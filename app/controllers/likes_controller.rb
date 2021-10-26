class LikesController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @tweet.update(likes: @tweet.likes.to_i + 1)
    redirect_to @tweet
  end
end