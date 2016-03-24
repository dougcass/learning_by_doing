#!/usr/bin/env ruby

class CashRegister
  def initialize
    '%.2f' % @total = 0.0

  end

  def total
    '%.2f' % @total
  end

  def purchase(cost)
    '%.2f' % @total = @total + cost

  end

  def pay(tender)
    change = tender - @total
    if change < 0
      puts "Your new total is $#{format('%.2f', change.abs)}"
      @total = change.abs
    else
      puts "Your change is $#{format('%.2f', change)}"
    end
  end

end


register = CashRegister.new


puts register.total # => 0.00
puts register.purchase(3.78) # => 3.78
puts register.purchase(5.22) # => 9.00
puts register.total # => 9.00
register.pay(5.00) # => "Your new total is $4.00"
puts register.total # => 4.00
register.pay(5.00) # => "Your change is $1.00"
puts register.total # => 0.00


# purchase method takes a floating number and adds that to the total


# total method returns how much is owed


# pay method take sone floating number for how much is paid
# and should return how much change is given
