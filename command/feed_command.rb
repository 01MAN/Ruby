require './base_command.rb'

class FeedCommand < BaseCommand
  def execute
    @subject.fullness += 10
    @subject.tiredness += 2
    @subject.happiness += 20
  end
end
