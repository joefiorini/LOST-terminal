require File.dirname(__FILE__) + '/sound_player'
require File.dirname(__FILE__) + '/story_printer'
require File.dirname(__FILE__) + '/numbers'

class Dharma

  def initialize(terminal, &block)
    @terminal = terminal
    @numbers = Numbers.new
    @sound_player = SoundPlayer.new
    self.instance_eval(&block)
  end

  def volunteer_for_program
    StoryPrinter.print(:volunteer_for_program, @terminal.output)
  end

  def ask_for_numbers
    @sound_player.play_sound_looped(:alarm)
    @numbers.set(@terminal.input.gets)
    @sound_player.stop_sound!
  end

  def plane_crashed!
    Thread.new { @sound_player.play_sound(:system_failure) }
    Thread.new { @sound_player.play_sound(:magnet) }
    StoryPrinter.print(:plane_crashed, @terminal.output)
  end

  def plane_crashed?
    !@numbers.valid?
  end

  def appeal_to_smoke_monster!
    plane_crashed!
    StoryPrinter.print(:appeal_to_smoke_monster, @terminal.output)
    generate_drawing_entry!
  end

  def generate_drawing_entry!
    sleep(1)
    Thread.new { @sound_player.play_sound(:reset) }
    StoryPrinter.print(:success, @terminal.output)
    # generate number
    # write to file
  end
end
