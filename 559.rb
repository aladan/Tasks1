puts "Input n: "
 n = gets.chomp.to_i

 def is_prime? n
 	(2...n).each do |number|
		if n % number == 0
			return false
			break		
		end
 	end
 end

res = Array.new
a = 1
mersen_number = 1
while mersen_number < n
 	res.push(mersen_number) if (is_prime?(a) && is_prime?(mersen_number))
 	a += 1
 	mersen_number = 2**a - 1
end
 	 "#{res.each {|x| puts x}}"
 	 
