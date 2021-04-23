class TweetsController < ApplicationController

    def index
        tweets = Tweet.all
        render(json: {tweets: tweets})
    end

    def show
        tweet = Tweet.find(params[:id])
        render(json: {tweet: tweet})
    end

    def create
        tweet = Tweet.new(tweet_params)

        if tweet.save
            render json: {tweet: tweet}
        else
            render(status: 422, json: {tweet: tweet, errors: song.errors})
        end
        
    end

    private

    def tweet_params
        params.require(:tweet).permit(:title, :content, :author)
    end

end