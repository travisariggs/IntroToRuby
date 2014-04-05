def roman_numeral number
    
    numeral = ''
    
    new_num = number

    numeral_types = [['M', 1000],
                     ['D',  500],
                     ['C',  100],
                     ['L',   50],
                     ['X',   10],
                     ['V',    5],
                     ['I',    1]]

    numeral_types.each do |letter, repr|
        # Calculate the number of letters to use and the remainder
        num_of_chars, left_over = divide(new_num, repr)
        
        # Add to the roman numeral
        numeral = numeral + letter*num_of_chars

        # Update the number
        new_num = new_num - num_of_chars*repr

    end

    return numeral
    
end

def divide(numerator, denominator)

    quotient = numerator / denominator
    remainder = numerator % denominator

    return quotient, remainder

end

puts 'Enter a number less than 3000'

number = gets.chomp.to_i

#v = div(50, 10)

resulting_numeral = roman_numeral number

puts resulting_numeral

