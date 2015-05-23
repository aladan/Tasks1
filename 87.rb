# using math logic
while(true)
puts "Input n: "
n = gets.chomp.to_i
puts "Input m: "
m = gets.chomp.to_i

result = 0
	(1..m).each do 
		result += n % 10
		n /= 10.0
	end
puts "Result = #{result}"
puts "To exit press 'q', to continue press any key"
if gets.chomp == 'q' then break end
end
