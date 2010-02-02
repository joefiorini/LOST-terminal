require 'highline'
require File.dirname(__FILE__) + '/numbers'

class Dharma

  def initialize(terminal, &block)
    @terminal = terminal
    @numbers = Numbers.new
    self.instance_eval(&block)
  end

  def volunteer_for_program
    StoryPrinter.print(:volunteer_for_program)
  end

  def ask_for_numbers
    @numbers.set(@terminal.input.gets)
  end

  def plane_crashed!
    StoryPrinter.print(:plane_crashed, @terminal.output)
  end

  def plane_crashed?
    @numbers.valid?
  end

  def appeal_to_smoke_monster!
    StoryPrinter.print(:appeal_to_smoke_moster)
    generate_drawing_entry!
  end

  def generate_drawing_entry!
    StoryPrinter.print(:success)
    # generate number
    # write to file
  end
end
