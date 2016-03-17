#!/usr/bin/env/ruby

fizz_buzz_array = []
count = 0
while count != 100
  count += 1
  if count % 3 == 0 && count % 5 == 0
    fizz_buzz_array.push("FizzBuzz")
  elsif count % 3 == 0
    fizz_buzz_array.push("Fizz")
  elsif count % 5 == 0
    fizz_buzz_array.push("Buzz")
  else
    fizz_buzz_array.push(count)
  end
end

puts fizz_buzz_array

