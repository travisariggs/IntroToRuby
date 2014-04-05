def ask question
    while true
        puts question
        reply = gets.chomp.downcase
        if (reply == 'yes' || reply == 'no')
            if reply == 'yes'
                answer = true
            else
                answer = false
            end
            return answer
        else
            puts 'Please answer "yes" or "no".'
        end
    end
end

puts 'Hello, and thank you for...blah, blah, blah'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
puts 'Just a few more questions...'
ask 'Do you like eating horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed



