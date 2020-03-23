class GeometricProgression
  # a - первый эл-т прогрессии, denominator - знаменатель
  def initialize(max_iteration:, a: 1, denominator: 2)
    @max_iteration = max_iteration
    @a = a
    @denominator = denominator
  end

  def each
    b = @a
    (1...(@max_iteration + 1)).each do
      b *= @denominator
      yield b
    end
  end

  def map
    b = @a
    (1...(@max_iteration + 1)).map do
      b *= @denominator
      yield b
    end
  end
end
