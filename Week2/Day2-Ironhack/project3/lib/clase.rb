
class Calculator

  def initialize (first, second)
    @first = first
    @second = second
  end
  def add
    @result = @first + @second
  end
  def multiply
    @result = @first * @second
  end
  def substract
    @result = @first - @second
  end
  def divide
    @result = @first / @second
  end

end
