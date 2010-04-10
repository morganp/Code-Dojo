
require 'rubygems'
require 'twitter'

# Consumer Key
cKey = "load from file"
#
# Consumer Secret
cSecret = "load from file"
#
# Verified on site and recievied this pin
# 8067944


#Amarastech loged in and authorised the follwoing details
# Request Tokens
rToken = "Gk2b4HpxM8FFwHFCsTqIb3wyZqEB0hXXKHznzV7G0Y"
rSecret = "77xp9TOkeNDhRXSereHHb7CmH81V8DoPxmTs0advs"
pin =    0

#access tokens

# NOT SHOWN: granting access to twitter on website
# and using request token to generate access token
oauth = Twitter::OAuth.new(cKey, cSecret)
oauth.authorize_from_request(rToken, rSecret, pin)
oauth.authorize_from_access('access token', 'access secret')


client = Twitter::Base.new(oauth)
client.friends_timeline.each  { |tweet| puts tweet.inspect }
#client.user_timeline.each     { |tweet| puts tweet.inspect }
#client.replies.each           { |tweet| puts tweet.inspect }

#client.update('Hello, http://amaras-tech.co.uk test tweet from ruby api')

