# using math logic
require 'pry'
def calculation(n, m)
  result = 0
  (1..m).each do
    result += n % 10
    n /= 10
  end
  result
end

def start
  loop do
    puts 'Input n: '
    n = gets.chomp.to_i
    puts 'Input m: '
    m = gets.chomp.to_i
    puts "Result = #{calculation(n, m)}\"
    To exit press 'q', to continue press any key"
    gets.chomp == 'q' ? break : true
  end
end
start
