class RetweetsController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @tweet.increment! :retweets
    redirect_to @tweet
  end
end