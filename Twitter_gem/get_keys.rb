require 'rubygems'
require 'twitter'

# Consumer Key
cKey = "load from file"
#
# Consumer Secret
cSecret = "load from file"

consumer = OAuth::Consumer.new(
  cKey, 
  cSecret, 
  {:site => 'http://twitter.com'}
)

request_token = consumer.get_request_token
puts "These credentials are valid for 1 API call"
puts "Request Token  : " + request_token.token
puts "Request Secret : " + request_token.secret
puts "Request URL    : " + request_token.authorize_url

#Pin will be returned
print "> what was the PIN twitter provided you with? "
pin = gets.chomp





access_token = consumer.get_access_token(request_token, pin)

## Trying to get access token
#oauth = Twitter::OAuth.new(cKey, cSecret)
#oauth.authorize_from_request(request_token.token, request_token.secret, pin)
#
#access_token = oauth.get_access_token(
#      request_token
#   )

puts "Access Token  : " + access_token.token
puts "Access Secret : " + access_token.secret
puts "Access URL    : " + access_token.authorize_url


