
# Stackover flow question on this
# http://stackoverflow.com/questions/2612745/oauth-gives-me-401-error/2613200#2613200

require 'rubygems'
require 'twitter'

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


client = Twitter::Base.new(oauth)
client.friends_timeline.each  { |tweet| puts tweet.inspect }
#client.user_timeline.each     { |tweet| puts tweet.inspect }
#client.replies.each           { |tweet| puts tweet.inspect }

#client.update('Hello, http://amaras-tech.co.uk test tweet from ruby api, with access keys')

