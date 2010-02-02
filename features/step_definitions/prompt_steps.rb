Given /there is an entry prompt/ do
  @input = StringIO.new
  @output = StringIO.new
  @snd_player = mock
  @program = Terminal.new(@input, @output, @snd_player)
end

When /I enter ([0-9]+[,[0-9]+]*)/ do |numbers|
  @numbers = numbers
  @input.expects(:gets).returns(numbers)
end

Then /I should hear the numbers reset/ do
  @snd_player.expects('play').with(:reset)
  @program.run
end

Then /I should be told I have been entered to win/ do
  @output.expects(:puts).with("You have been entered to win!")
end
