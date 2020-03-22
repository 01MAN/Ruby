require './observable.rb'

class University
  include Observable
  attr_accessor :name
end
