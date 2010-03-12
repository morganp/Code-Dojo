#!/usr/bin/env ruby

require 'test/unit/ui/console/testrunner'
require 'binary_test'

require 'pp'

def chop(int, arr_of_int)
   puts ""
   puts "int:" + int.to_s + " Array;" + arr_of_int.to_s

   #Apply some basic Filtering
   if arr_of_int.length == 0
      puts 'Empty array'
      return -1
   end

   #Current behaviour of test might change later
   if not arr_of_int.include?(int) 
      puts int.to_s + "Not in array " + arr_of_int.to_s
      return -1 
   end

   return half(int, arr_of_int, 1)
end


#The Real workhorse Method
def half (int, arr_of_int, itteration)
   middle_num =  (arr_of_int.length / 2)
   
   puts spaces(itteration) + "Recurse : Array Split at" + middle_num.to_s
   puts spaces(itteration) + "int:" + int.to_s + " Array;" + arr_of_int.to_s

   if int == arr_of_int.at(middle_num)
      puts spaces(itteration) + "Found it"
      return middle_num
   elsif int > arr_of_int.at(middle_num)
      puts spaces(itteration) + "In Upper Half"
      return middle_num + half(int, arr_of_int[middle_num...(arr_of_int.length)], itteration+1)
   else
      puts spaces(itteration) + "In Lower Half"
      half(int, arr_of_int.first(middle_num), itteration+1)
   end


end

def spaces(x)
   y = " "
   return y*x
end


Test::Unit::UI::Console::TestRunner.run(BinSearchTest)
