module TwitterHelper

	def self.new(user)
		
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV['CONSUMER_KEY']
		  config.consumer_secret     = ENV['CONSUMER_SECRET']
		  config.access_token        = user.token
		  config.access_token_secret = user.secret
		end
		return client
	end

end