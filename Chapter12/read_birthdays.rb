require 'date'
require 'time'

data = {}

# Read birthdays file
lines = File.read 'Birthdays.txt'

# Parse each line into a hash
lines.split("\n").each do |line|

  parts = line.split(', ')

  name = parts[0]

  dateline = parts[1] + ', ' + parts[2]

  date = Date.strptime(dateline, ' %b %d, %Y')

  data[name] = Time.parse(date.to_s)

end

while true

  puts "Whose birthday would you like to know?"
  puts "Here are the ones I know about:"
  data.keys.each { |k| puts k }

  a_name = gets.chomp

  if data.has_key? a_name

    age = (Time.now - data[a_name])/(60*60*24*365.25)

    puts "#{a_name}'s birthday is #{data[a_name].strftime('%B %d, %Y')} and is #{age} years old."

  else

    puts "I'm not sure when that person's birthday is..."

  end

end