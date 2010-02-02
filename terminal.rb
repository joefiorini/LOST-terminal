class Terminal

  attr_reader :input, :output

  def initialize(input, output)
    @input = input
    @output = output
  end

  def run!
    Dharma.new(self) do
      ask_for_numbers
      respond
    end
  end
end

Terminal.new($stdin, $stdout).run!
