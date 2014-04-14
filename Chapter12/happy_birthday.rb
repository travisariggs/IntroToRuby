puts "What's your birth year?"
year = gets.chomp

puts "What's your birth month (number)?"
month = gets.chomp

puts "What's your birth day?"
day = gets.chomp

birthday = Time.local(year.to_i, month.to_i, day.to_i)

now = Time.now

age_in_years = (now - birthday)/(60*60*24*365.25)

puts "You are #{age_in_years.to_i} years old!"

age_in_years.to_i.times {
  puts 'Spank!'
}