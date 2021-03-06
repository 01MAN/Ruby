require './geometric_progression.rb'

def map(arr)
  new_arr = []
  arr.each do |i|
    new_arr.push yield i
  end
  new_arr
end

GeometricProgression.new(max_iteration: 5, a: 10, denominator: 2).each { |n| puts n }
puts '---'
GeometricProgression.new(max_iteration: 5).each { |n| puts n }

puts '********'
arr = GeometricProgression.new(max_iteration: 5).map { |n| n * n }
puts arr

