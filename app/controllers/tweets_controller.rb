class TweetsController < ApplicationController

    def index
        tweets = Tweet.all
        render(json: {tweets: tweets})
    end

    def show
        tweet = Tweet.find(params[:id])
        render(json: {tweet: tweet})
    end

end