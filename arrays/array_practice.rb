#!/usr/bin/env ruby

#Create an array variable with the the numbers 1 through 10
array = (1..10).to_a
# 1...2...3...4...5...6...7...8...9...10...
puts array.join('...') + "..."
# T-10, 9, 8, 7, 6, 5, 4, 3, 2, 1...  BLASTOFF!
puts 'T-' + array.reverse.join(', ') + '...  BLASTOFF!'
# The last element is 10
puts "The last element is #{array.last}"
# The first element is 1
puts "The first element is #{array.first}"
# The third element is 3
puts "The third element is #{array[2]}"
# The element with an index of 3 is 4
puts "The element with an index of 3 is #{array[3]}"
# The second from last element is 9
puts "The second from last element is #{array[-2]}"
# The first four elements are '1, 2, 3, 4'
puts "The first four elements are '#{array.take(4).join(', ')}'"
# If we delete 5, 6 and 7 from the array, we're left with [1,2,3,4,8,9,10]
#puts "If we delete #{array.delete_at(4)}, #{array.delete_at(4)} and #{array.delete_at(4)} from the array, we're left with [#{array.join(",")}] "
puts "If we delete 5, 6 and 7 from the array, we're left with [#{array.delete_if{|array| array >4 && array < 8}.join(",")}] "
# If we add 5 at the beginning of the array, we're left with [5,1,2,3,4,8,9,10]
puts "If we add 5 at the beginning of the array, we're left with [#{array.unshift(5).join(",")}]"
# If we add 6 at the end of the array, we're left with [5,1,2,3,4,8,9,10,6]
puts "If we add 6 at the end of the array, we're left with [#{array.push(6).join(",")}]"
# Only the elements [9, 10] are > 8.
puts "Only the elements #{array.select { |a| a > 8 }} are > 8."
# If we remove all the elements, then the length of the array is 0
puts "If we remove all the elements, then the length of the array is #{array.clear.length}"
