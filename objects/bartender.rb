#!/usr/bin/env ruby

class Bartender
  attr_reader :count
  def initialize
    @count = 0
    puts "Hi. Let me get you something to drink."
  end

  def pour
    if @count < 5
      @count += 1
    else
      self.cutoff
    end
  end

  def cutoff
    puts "I think you have had enough for this visit."
  end
end


