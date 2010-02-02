class Terminal

  attr_reader :input, :output

  def initialize(input, output)
    @input = input
    @output = output
  end

  def run!

  end
end

Terminal.new($stdin, $stdout).run!
