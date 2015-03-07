class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end
	def create
		@tweet = Tweet.new(tweet_param)
		if @tweet.save
			flash[:error] = "You have created a tweet"
			redirect_to new_tweet_path
		end
	end

	def tweet_param
		params.require(:tweet).permit(:content)
	end
end
