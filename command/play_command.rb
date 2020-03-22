require './base_command.rb'

class PlayCommand < BaseCommand
  def execute
    @subject.fullness -= 1
    @subject.tiredness += 10
    @subject.happiness += 10
  end
end
