def prime?(n)
  (2...n).each do |number|
    return false if (n % number == 0)
    true
  end
end

def start
  puts 'Input n: '
  n = gets.chomp.to_i
  res = []
  count = mersen_number = 1
  while mersen_number < n
    res.push(mersen_number) if prime?(count) && prime?(mersen_number)
    count += 1
    mersen_number = 2**count - 1
  end
  res.each { |x| puts x }
end
start
