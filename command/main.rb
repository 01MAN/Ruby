require './base_command.rb'
require './sleep_command.rb'
require './play_command.rb'
require './feed_command.rb'
require './cat.rb'

def print_info(cat)
  puts "fullness: #{cat.fullness}"
  puts "tiredness: #{cat.tiredness}"
  puts "happiness: #{cat.happiness}"
  puts
end

cat = Cat.new(0, 0, 0)
print_info(cat)
puts 'Give whiscas:'
FeedCommand.new(cat).execute
print_info(cat)
puts 'Play with mouse:'
PlayCommand.new(cat).execute
print_info(cat)
puts 'Sleep on human:'
SleepCommand.new(cat).execute
print_info(cat)
