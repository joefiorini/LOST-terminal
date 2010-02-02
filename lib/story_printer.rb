require 'highline'

class StoryPrinter
  extend HighLine::SystemExtensions

  class << self
    def print(story, output)
      printer = self.new
      the_story = printer.send(story)
      output.puts "\e[2J\e[f"
      output.puts the_story
      output.puts "Press any key to continue..."
      get_character
      output.puts "\e[2J\e[f"
    end
  end

  def volunteer_for_program
    <<-EOS
Welcome to the dharma initiative!
    EOS
  end

  def appeal_to_smoke_monster
    <<-EOS
Ask the smoke monster.
    EOS
  end

  def success
    <<-EOS
You have been entered!
    EOS
  end

  def plane_crashed
    <<-EOS
Ooops, you broke it.
    EOS
  end
end
