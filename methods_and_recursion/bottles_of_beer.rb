#!/usr/bin/env ruby
def bottles_of_beer

  count = 99

  while count > 2
    puts "#{count} bottles of beer on the wall, #{count} bottles of beer." +
      " Take one down and pass it around, #{count -= 1} bottles of beer on the wall.\n\n"

  end

  puts "#{count} bottles of beer on the wall, #{count} bottles of beer." +
    " Take one down and pass it around, #{count -= 1} bottle of beer on the wall.\n\n"

  puts "#{count} bottle of beer on the wall, #{count} bottle of beer." +
    " Take one down and pass it around, #{count -= 1} bottles of beer on the wall.\n\n"

  puts "No more bottles of beer on the wall, no more bottles of beer." +
    " Go to the store and buy some more, 99 bottles of beer on the wall."

end
bottles_of_beer
