my_birthdate = Time.local(1983, 3, 19, 2, 21)

now = Time.now

age_in_seconds = now - my_birthdate

puts "Travis's age in seconds #{age_in_seconds}"

billion_seconds_old = my_birthdate + 1_000_000_000

if age_in_seconds < 1_000_000_000
  puts "Travis is still a young pup...less than 1 billion seconds."
  puts "Travis will turn 1 billion seconds on #{billion_seconds_old}"
else
  puts "Travis is almost dead.  He's older than 1 billion seconds."
end


