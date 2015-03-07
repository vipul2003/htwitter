class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end
	def create
		@tweet = Tweet.new(tweet_param)
		@tweet.save
		render 'new'
	end

	def tweet_param
		params.require(:tweet).permit(:content)
	end
end
