require './university.rb'
require './observable.rb'
require './observers.rb'

university = University.new
university.add_observer Virus.new
university.add_observer MinistryScience.new
university.add_observer MinistryEducation.new
university.name = 'Sibsutis'
university.notify_observers
