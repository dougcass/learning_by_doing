#!/usr/bin/env ruby
def bottles_of_beer

  count = 99

  while count > 1

    puts "#{count} bottles of beer on the wall, #{count} bottles of beer." +
      " Take one down and pass it around, #{count} bottles of beer on the wall.\n\n"
    count -= 1
  end

  puts "#{count} bottle of beer on the wall, #{count} bottle of beer." +
    " Take one down and pass it around, #{count} bottle of beer of beer on the wall.\n\n"

  puts "No more bottles of beer on the wall, no more bottles of beer." +
    " Go to the store and buy some more, 99 bottles of beer on the wall."

end
bottles_of_beer
