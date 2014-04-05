bye_count = 0

puts 'What would you like to say to Grandma?  (You\'d better speak up...)'

while true

    you_say = gets.chomp

    if you_say == 'BYE'
        bye_count = bye_count + 1
        if bye_count == 3
            break
        end
    
    elsif you_say == you_say.upcase
        # Clear the bye count
        bye_count = 0

        rand_year = rand(21) + 1930
        puts 'NO, NOT SINCE ' + rand_year.to_s + '!'
    
    else
        # Clear the bye count
        bye_count = 0
        
        puts 'HUH?!  SPEAK UP, SONNY!'
    end
end

puts 'BYE SONNY!'
