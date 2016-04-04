# !usr/bin/env ruby
class CashRegister
  attr_reader :total

  def initialize
    @total = 0
  end

  def purchase(amount)
    @total += amount
  end

  def payment(amount)
    @total -= amount
    return "Your change is $#{'%.2f' % @total.abs}." if @total < 0.0
  end
end

register = CashRegister.new
register.purchase(3)
register.payment(5)
