# Missing top level
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
    if @total < 0.0
      puts "Your change is $#{@total}."
    else
      puts 'Thank you for your purchase.'
    end
  end
end

register = CashRegister.new
register.purchase(3)
register.payment(5)
