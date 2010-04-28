#!/usr/bin/env ruby

require 'rubygems'
require 'twitter'

#searches all tweets for httparty
Twitter::Search.new('httparty').each do |r| 
  puts r.inspect
end
