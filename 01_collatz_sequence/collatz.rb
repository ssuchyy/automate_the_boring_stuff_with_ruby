def collatz(number)
  numbers = []
  while number != 1 do
    numbers << number
    if number % 2 == 0
      number /= 2
    else
      number = (number * 3) + 1
    end
  end
  return numbers << 1
end


begin
  puts collatz(Integer(gets))
rescue ArgumentError
  puts 'Invalid input'
end
