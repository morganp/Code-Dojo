
require 'rubygems'
require 'twitter'

require 'consumer_keys'
require 'access_token'

load 'twitter_keys.rb'


# NOT SHOWN: granting access to twitter on website
# and using request token to generate access token
oauth = Twitter::OAuth.new(@twitter_keys[:consumer_key], @twitter_keys[:consumer_secret])

#Requests valid for 1 API call, normally used to get access tokens
#oauth.authorize_from_request(rToken, rSecret, pin)


oauth.authorize_from_access(@twitter_keys[:access_token], @twitter_keys[:access_secret])


client = Twitter::Base.new(oauth)
#client.friends_timeline.each  { |tweet| puts tweet.inspect }
#client.user_timeline.each     { |tweet| puts tweet.text }
#client.replies.each           { |tweet| puts tweet.inspect }

#client.update('Hello, http://amaras-tech.co.uk test tweet from ruby api')

