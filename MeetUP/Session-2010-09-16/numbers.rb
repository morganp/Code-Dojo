#ruby numbers 1000

#i,f=ARGV[0].split('.'); p i.reverse.gsub(/(\d{3})(?=\d)/,'\1,').reverse+'.'+f
#p [1,[2,[3]]].inject([]) {|a,b| (b.is_a? Array) ? a+b : a+[b]A
#p (1..10).to_a.sort_by {|k| rand}

class MorganArray < Array
   def sum
      inject(0) {|s,n| s+n}
   end
end

p MorganArray.new([1,2,3]).sum
