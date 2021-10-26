class RetweetsController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @tweet.update(retweets: @tweet.retweets.to_i + 1)
    redirect_to @tweet
  end
end