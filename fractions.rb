class Fraction
  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def to_decimal
    if numerator == 0
      puts "0"
    elsif denominator == 0
      puts "undefined"
    elsif numerator.class == String || denominator.class == String
      puts "You can't divide strings"
    else
      puts numerator/denominator.to_f
    end
  end

  def to_string
    if numerator == 0
      puts "0"
    elsif denominator == 0
      puts "undefined"
    elsif numerator.class == String || denominator.class == String
      puts "You can't divide strings"
    else
      puts numerator.to_s + "/" + denominator.to_s
    end
  end

  def simplify
    if numerator == 0
      puts "0"
    elsif denominator == 0
      puts "undefined"
    elsif numerator.class == String || denominator.class == String
      puts "You can't divide strings"
    else
      min = [numerator, denominator].min
      min.downto(2) do |x|
        if numerator % denominator == 0 && denominator % denominator ==0
          n=numerator/x
          d=denominator/x
          puts n.to_s + "/" + d.to_s
        else
          puts numerator/denominator
        end
      end
    end
  end
end
