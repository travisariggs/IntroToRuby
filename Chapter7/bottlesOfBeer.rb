the_count = 999

while the_count > 0

    puts the_count.to_s + ' bottle of beer on the wall!'
    puts the_count.to_s + ' bottle of beer!'
    puts 'Take one down!  Pass it around!'
    puts the_count.to_s + ' bottle of beer on the wall!'
    puts

    # One less beer
    the_count = the_count - 1

end

