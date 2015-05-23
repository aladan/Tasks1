loop do
puts "Input n: "
 n = gets.chomp.to_i
puts "Input m: "
 m = gets.chomp.to_i

a = [n, m].max
result = Array.new

(a...m*n).each do |number|
result.push(number) if (number % n == 0)&&(number % m == 0)
end

 result.each  do |num|
 	  if result.index(num) % 4 == 0 
 	  	puts "#{num}, "
 	  else
 	    print "#{num},"
 	  end
 end
puts "Print 'q' to exit, press any other key to continue"
break if gets.chomp == 'q'
end
