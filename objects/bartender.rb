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
      cutoff
    end
  end

  def cutoff
    puts "I think you have had enough for this visit."
  end
end

bartender = Bartender.new

bartender.pour
bartender.pour
bartender.pour
bartender.pour
bartender.pour
bartender.pour






