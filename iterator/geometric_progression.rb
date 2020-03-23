class GeometricProgression
  def initialize(max_iteration:, a: 1, denominator: 2)
    @max_iteration = max_iteration
    @a = a
    @denominator = denominator
  end

  def each
    b = @a
    (0...@max_iteration).map do
      b *= @denominator
      yield b
    end
  end

  def map
    new_arr = []
    b = @a
    (0...@max_iteration).map do
      b *= @denominator
      new_arr.push(yield b)
    end
    new_arr
  end
end
