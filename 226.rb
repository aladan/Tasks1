def find(n, m)
  max = [n, m].max
  result = []
  (max...m * n).each do |number|
    result.push(number) if (number % n == 0) && (number % m == 0)
  end
  result
end

def start
  puts 'Input n: '
  n = gets.chomp.to_i
  puts 'Input m: '
  m = gets.chomp.to_i
  find(n, m).each { |num| puts "#{num} " }
end
start

# def start
#   loop do
#     puts 'Input n: '
#     n = gets.chomp.to_i
#     puts 'Input m: '
#     m = gets.chomp.to_i
#     find(n, m).each { |num| puts "#{num} " }
#     puts "Print 'q' to exit, any key to continue"
#     gets.chomp.eql?('q') ? break : true
#   end
# end
