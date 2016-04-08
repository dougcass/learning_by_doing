#!/usr/bin/env ruby
# silly rubocop
class Bartender
  attr_reader :count

  def start
    @count = 0
  end

  def hello
    'Hi. What would you like to drink?'
  end

  def pour
    if @count == 6
      'Sorry. No more for you today.'
    else
      @count += 1
    end
  end
end
