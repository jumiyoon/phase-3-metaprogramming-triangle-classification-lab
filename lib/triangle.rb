require 'pry'

class Triangle
  
  attr_reader :side1, :side2, :side3 

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3 

    sorted = [side1, side2, side3].sort

    if side1 > 0 && side2 >0 && side3 >0
      nil
    end

    unless sorted[0]+sorted[1] > sorted[2] 
      raise TriangleError
    end



  end


  def kind
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Not a trinagle!"
    end
  end


    
end
