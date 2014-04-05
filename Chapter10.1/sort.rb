def sort words

    # Initialize array to store sorted words
    sorted = []

    # Loop through the list once for each word
    words.length.times do
       
        #puts 'Loop'

        min = words[0]

        # Find the minimum word in the list
        words.each do |word|
            if word < min
                min = word
            end
        end

        # Add the minimum value to the sorted list
        sorted.push min
        #puts sorted

        # Remove the minimum word to find the next minimum
        words.delete(min)

    end

    return sorted

end

def sort_recursive words

    # Is this list down to one word?
    if words.length == 1

        return words
    
    else

        # Initialize an empty list
        sorted = []

        # Find minimum word
        min = words[0]
        words.each do |word|
            if word.downcase < min.downcase
                min = word
            end
        end

        # Add the minimum word to the sorted list
        sorted.push min

        # Remove the minimum word from the list
        words.delete_at(words.index(min))

        sorted = sorted + sort_recursive(words)

        return sorted

    end

end

def shuffle words

  shuffled = []

  words.length.times do

    # Get random index
    i = rand(words.length)

    # Pull that word into the new array
    shuffled.push words[i]

    # Delete that word
    words.delete_at(i)

  end

  return shuffled

end

#puts 'Enter some words and press Enter for each'
#
#words = []
#
#while true
#
#    response = gets.chomp
#
#    if response.length == 0
#        break
#    end
#
#    # Add the response to the array
#    words.push response
#
#end

words = ['rain', 'ok', 'a', 'travis', 'a', 'Zener']
puts 'Ruby sort:'
puts words.sort
puts
puts 'My recursive sort:'
puts sort_recursive words
puts 
puts 'My simple sort:'
puts sort ['rain', 'ok', 'travis', 'a', 'Zener']
puts
puts 'My shuffler'
puts shuffle ['rain', 'ok', 'travis', 'a', 'Zener']
puts
puts shuffle ['rain', 'ok', 'travis', 'a', 'Zener']
puts
puts shuffle ['rain', 'ok', 'travis', 'a', 'Zener']
puts
puts shuffle ['rain', 'ok', 'travis', 'a', 'Zener']