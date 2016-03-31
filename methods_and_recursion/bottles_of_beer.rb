#!/usr/bin/env ruby


def bottles_of_beer(number)
  if number > 2
    puts "#{number} bottles of beer on the wall, #{number} bottles of beer." +
      " Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n\n"
  elsif number == 2
    puts "#{number} bottles of beer on the wall, #{number} bottles of beer." +
      " Take one down and pass it around, #{number - 1} bottle of beer on the wall.\n\n"
  elsif number == 1
    puts "#{number} bottle of beer on the wall, #{number} bottle of beer." +
      " Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n\n"
  else
    number == 0
    puts " No more bottles of beer on the wall, no more bottles of beer." +
      " Go to the store and buy some more, 99 bottles of beer on the wall."
  end
  if number > 0
    bottles_of_beer(number-1)
  end

end


bottles_of_beer(99)








