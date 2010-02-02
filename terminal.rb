require File.dirname(__FILE__) + '/lib/dharma'

class Terminal

  attr_reader :input, :output

  def initialize(input, output)
    @input = input
    @output = output
  end

  def run!
    Dharma.new(self) do
      volunteer_for_program
      ask_for_numbers
      if plane_crashed?
        appeal_to_smoke_monster!
      else
        generate_drawing_entry!
      end
    end
  end
end

puts "\e[2J\e[f"
while(true)
  Terminal.new($stdin, $stdout).run!
end
