class Triangle
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid
    if (@side1 + @side2) <= @side3 || (@side2 + @side3) <= @side1 || (@side1 + @side3) <= @side2
      'Not a triangle'
    end
  end

  def type
    if (@side1 == @side2 && @side2 == @side3 && @side1 == @side3)
      'equilateral'
    elsif @side1 == @side2 && @side2 != @side3 || @side1 == @side3 && @side1 != @side2 || @side2 ==@side3 && @side2 != @side1
      'isosceles'
    else
      'scalene'
    end
  end

end
