def roman_to_int(roman)

  digit_hash = { 'i' => 1,
                 'v' => 5,
                 'x' => 10,
                 'l' => 50,
                 'c' => 100,
                 'd' => 500,
                 'm' => 1000
  }

  total = 0
  prev = 0

  roman.reverse.each_char do |c|

    val = digit_hash[c.downcase]

    unless val
      puts 'This is not a valid roman numeral character!'
      return
    end

    if val < prev
      val *= -1
    else
      prev = val
    end
    total += val

  end

  total

end

puts(roman_to_int('xi'))
puts(roman_to_int('CmxCi'))
puts(roman_to_int('ix'))