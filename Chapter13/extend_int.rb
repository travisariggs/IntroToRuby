class Integer

  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty-two'
    end
    english
  end

  def factorial
    an_array = (1..self).to_a
    factorial = 1
    an_array.each { |f| factorial *= f }

    factorial
  end

end

puts 5.to_eng
puts 42.to_eng

puts
puts 5.factorial

