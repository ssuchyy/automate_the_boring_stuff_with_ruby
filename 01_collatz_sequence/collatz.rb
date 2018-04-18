def collatz(number)
  numbers = []
  while number != 1
    numbers << number
    if number.even?
      number /= 2
    else
      number = (number * 3) + 1
    end
  end
  numbers << 1
end

begin
  puts collatz(Integer(gets))
rescue ArgumentError
  puts 'Invalid input'
end
