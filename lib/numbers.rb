class Numbers

  def set(numbers)
    @numbers = numbers.squeeze(' ').chomp
  end

  def valid?
    @numbers == '4 8 15 16 23 42'
  end
end
