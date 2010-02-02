require 'highline'

class Dharma

  def initialize(terminal, &block)
    @terminal = terminal
    self.instance_eval(&block)
  end

  def volunteer_for_program
    StoryPrinter.print(:volunteer_for_program)
  end
end
