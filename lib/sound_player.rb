class SoundPlayer
  attr_reader :sounds
  @@assets_dir = File.expand_path(File.join(File.dirname(__FILE__), "..", "assets"))

  def initialize
    @sounds = {:alarm => path_to("timer_alarm.mp3"),
              :reset => path_to("timer_reset.mp3"),
              :magnet => path_to("em_metal_objects.mp3"),
              :system_failure => path_to("system_failure_triple.mp3")}
  end

  def play_sound(sound)
    `/opt/local/bin/mpg123 #{sounds[sound]} 2> /dev/null`
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
  
  def path_to(filename)
    "%s/%s" % [@@assets_dir, filename]
  end
end
