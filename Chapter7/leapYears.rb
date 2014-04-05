puts 'Give a starting year:'
start_year_str = gets.chomp

puts 'Give an ending year:'
end_year_str = gets.chomp

# Convert to years to integers
start_year = start_year_str.to_i
end_year = end_year_str.to_i

# Print out all the leap years between the start and end years
current_year = start_year

puts 'Here are all of the leap years between ' + start_year_str + ' and ' + end_year_str + ':'
while current_year <= end_year

    # Is this a leap year?
    if current_year % 4 == 0 && current_year % 100 != 0
        puts current_year.to_s
    elsif current_year % 400 == 0
        puts current_year.to_s
    end

    # Increment the current year
    current_year = current_year + 1

end

