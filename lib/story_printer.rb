require 'highline'

class StoryPrinter
  extend HighLine::SystemExtensions

  class << self
    def print(story, output)
      printer = self.new
      the_story = printer.send(story)
      output.puts "\e[2J\e[f"
      output.puts the_story
      output.puts "\n\n\n\nPress any key to continue..."
      get_character
      output.puts "\e[2J\e[f"
    end
  end

  def volunteer_for_program
    jobs = ["workman", "physician", "scientist", "bunny caretaker", "lab technician"]

    <<-EOS
It's your first day on the job in the Dharma initiative! Fresh off the sub, it's time to pick up your dharma uniform and receive your job assignment.

Congratulations you are now a #{jobs[rand(jobs.length)]}! Enjoy your work and Namaste!
    EOS
  end

  def enter_the_numbers
    <<-EOS
A few years later, things have been going well. Today, however has been a little off. Horace has informed you that there is a secret station where someone needs to enter numbers every 108 minutes, and you've been chosen. You'll be stationed at the Swan where you'll live in isolation, but you will save the world.
    EOS
  end

  def plane
    <<-EOS
It's a normal day in your new hatch life. You are just getting out of the shower and you hear the alarm going off like usual. You need to enter the numbers to save the world.
    EOS
  end

  def appeal_to_smoke_monster
    <<-EOS
Since you messed up bad, you now must be judged by the smoke monster. After making the treacherous trip to the temple, you ask the smoke monster for forgiveness. Instead of getting an answer, you black out and wake up back in front of the terminal with the alarm going off. You remember the numbers, and quickly enter 4 8 15 16 23 42, saving the lives on the plane.
    EOS
  end

  def success
    <<-EOS
Because you succeeded, you can now take a lottery ticket from the bowl next to the computer. Take one and don't open it until you're told.
    EOS
  end

  def plane_crashed
    <<-EOS
You did not enter the correct sequence in time. Because of your negligence, you have caused a plane carrying 384 people to crash on the island. Good going.
    EOS
  end
end
