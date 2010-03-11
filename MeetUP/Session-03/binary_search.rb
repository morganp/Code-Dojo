require 'test/unit/ui/console/testrunner'
require 'binary_test'

require 'pp'

def chop(int, arr_of_int)
   puts ""
   puts "int:" + int.to_s + " Array;" + arr_of_int.to_s

   if arr_of_int.length == 0
      puts 'Empty array'
      return -1
   end

   #Current behaviour of test might change later
   if not arr_of_int.include?(int) 
      puts int.to_s + "Not in array " + arr_of_int.to_s
      return -1 
   end

   half (int, arr_of_int)

  return 0
end

def half (int, arr_of_int)
   middle_num =  arr_of_int.length / 2
   if int == arr_of_int.at(middle_num).floor
      puts "Found it"
      return middle_num
   elsif int > arr_of_int.at(middle_num)
      puts "In Upper Half"
      return middle_num + half(int, arr_of_int[middle_num, middle_num])
   else
      puts "In Lower Half"
      half(int, arr_of_int.first(middle_num))
   end


end


Test::Unit::UI::Console::TestRunner.run(BinSearchTest)
