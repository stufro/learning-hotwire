class LikesController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @tweet.increment! :likes
    redirect_to @tweet
  end
end