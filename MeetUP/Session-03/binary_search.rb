#!/usr/bin/env ruby

require 'test/unit/ui/console/testrunner'
require 'binary_test'

#PrettyPrint helps display Array
require 'pp'

def chop(int, arr_of_int)
   return -1
end


Test::Unit::UI::Console::TestRunner.run(BinSearchTest)
