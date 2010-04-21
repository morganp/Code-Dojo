#!/usr/bin/env ruby

require 'pp'

puts "Calculate Anagrams"

class Anagrams

   def initialize
      @@primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]
      @list = Hash.new 
   end

   def non_unique_hash(word)
      hash = 1
      (word.downcase).each_byte do |x|
         x = x-97 #97 is the code for lower case a
         if x < 0 or x > 25
            puts "Error non-alpha"
            exit(-1)
         end
         hash *= @@primes[x]
         #puts @@primes[x]
      end
      
      return hash
   end

   def add_to_list(word)
      hash = non_unique_hash(word)
      #puts hash
      @list[hash] ||= Array.new
      @list[hash] << word
   end

   def list_anagrams
      sets = 0
      total = 0
      @list.sort.each do |key, value|
         if value.size > 1
            sets += 1 
            total += value.size
         end
         pp value
      end
      puts "Total number of sets = #{sets}"
      puts "Total number of Anagrams = #{total}"
   end

end

y = Anagrams.new
y.add_to_list("a")
y.add_to_list("ab")
y.add_to_list("ba")

y.add_to_list("ten")
y.add_to_list("net")
y.add_to_list("eat")
y.add_to_list("tea")

#counter = 1
begin
   file = File.new("wordlist.txt", "r")
   while (line = file.gets)
      y.add_to_list(line.strip) 
      #puts "#{counter}: #{line}"
       #counter = counter + 1
   end
   file.close
rescue => err
      puts "Exception: #{err}"
      err
end


y.list_anagrams



