class SoundPlayer
  attr_reader :sounds

  def initialize
    @sounds = {:alarm => "~/Desktop/timer_alarm.mp3",
              :reset => "~/Desktop/timer_reset.mp3",
              :magnet => "~/Desktop/em_metal_objects.mp3",
              :system_failure => "~/Desktop/system_failure_triple.mp3"}
  end

  def play_sound(sound)
    `mpg123 #{sounds[sound]} 2> /dev/null`
  end

  def play_sound_looped(sound)
    @sound_thread = Thread.new do
      while(true)
        sleep(0.1)
        play_sound(sound)
      end
    end
  end

  def stop_sound!
    Thread.kill(@sound_thread)
  end
end
