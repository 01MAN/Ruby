class Virus
  def update(_university)
    puts 'Virus is coming...'
  end
end

class MinistryEducation
  def update(university)
    puts "Students #{university.name} must die!"
  end
end

class MinistryScience
  def update(_university)
    puts 'Vaccine development...'
  end
end
