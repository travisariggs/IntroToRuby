puts 'Enter some words and press Enter for each'

words = []

while true
    
    response = gets.chomp

    if response.length == 0
        break
    end

    # Add the response to the array
    words.push response

end

puts words.sort
