#!/usr/bin/env ruby

require 'rubygems'
require 'memory_usage'

def f1b(n)
   return n if (0..1).include? n
   @series[n] ||= f1b(n-1) + f1b(n-2)
end

@series = Array.new
(30..34).each do |x|
   start_time = Time.now
   puts
   puts "f1b(#{x}) #{f1b(x)}"
   puts "Completed in #{Time.now - start_time} seconds"

   a = MemoryUsage.new
   a.filter('fibonacci')
   a.report

end