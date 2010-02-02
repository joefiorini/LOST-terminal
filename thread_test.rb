require 'highline'
include HighLine::SystemExtensions
t = Thread.new do
sleep(2)
`mpg123 ~/Desktop/timer_reset.mp3 2> /dev/null`
end

puts "here's the story!!!"

get_character
