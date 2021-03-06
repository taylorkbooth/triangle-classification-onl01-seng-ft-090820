class Triangle

  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene

  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z
    @sides = [x,y,z].sort 
  end 

  def kind
    if @sides.any? {|s| s <= 0} or
       @sides[0]+ @sides[1] <= @sides[2]
        raise TriangleError
     elsif x == y && y == z && x == z
      :equilateral
    elsif 
    (x == y && x !=z) || (y == z && x != z) || (z == x && x != y)
      :isosceles
    elsif x != y && y != z && x != z
      :scalene
    end 
  end

  class TriangleError < StandardError
  end
  
end