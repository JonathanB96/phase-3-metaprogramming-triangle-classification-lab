class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  class TriangleError < StandardError

  end
 
  def kind
   if a>0 && b>0 && c>0 
      if a == b && b ==c && c==a
        :equilateral
        elsif a==b || a==c|| b==c
          if (a+b)<c || (a+c)<b || (b+c)<a 
             raise TriangleError  
           else :isosceles
          end
        end
        
        elsif a != b && b !=c && c!=a
        :scalene
      end
    elsif a<=0 || b<=0 || c<=0
    raise TriangleError
    elsif (a+b)<c || (a+c)<b || (b+c)<a 
    raise TriangleError 
  end
 end
 
 
end

