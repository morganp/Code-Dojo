
# Stackover flow question on this
# http://stackoverflow.com/questions/2612745/oauth-gives-me-401-error/2613200#2613200

require 'rubygems'
require 'twitter'

<<<<<<< HEAD:Twitter_gem/app.rb
require 'consumer_keys'
require 'access_token'

load 'twitter_keys.rb'


# NOT SHOWN: granting access to twitter on website
# and using request token to generate access token
oauth = Twitter::OAuth.new(@twitter_keys[:consumer_key], @twitter_keys[:consumer_secret])

#Requests valid for 1 API call, normally used to get access tokens
#oauth.authorize_from_request(rToken, rSecret, pin)


oauth.authorize_from_access(@twitter_keys[:access_token], @twitter_keys[:access_secret])
=======
#Load keys
require 'consumer_keys'

# Consumer Key
#cKey = "load from file"
#
# Consumer Secret
#cSecret = "load from file"

require 'access_token'
#access tokens
# aToken = "load from file"
# aSecret = "load from file"

# NOT SHOWN: granting access to twitter on website
# and using request token to generate access token
oauth = Twitter::OAuth.new(cKey, cSecret)
#oauth.authorize_from_request(rToken, rSecret, pin)
oauth.authorize_from_access(aToken, aSecret)
>>>>>>> 446a0339f699d175da1dc75eb6ca5d4e21869680:Twitter_gem/app.rb


client = Twitter::Base.new(oauth)
#client.friends_timeline.each  { |tweet| puts tweet.inspect }
#client.user_timeline.each     { |tweet| puts tweet.text }
#client.replies.each           { |tweet| puts tweet.inspect }

#client.update('Hello, http://amaras-tech.co.uk test tweet from ruby api, with access keys')

