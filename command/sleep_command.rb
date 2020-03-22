require './base_command.rb'

class SleepCommand < BaseCommand
  def execute
    @subject.fullness -= 10
    @subject.tiredness -= 20
    @subject.happiness += 10
  end
end
