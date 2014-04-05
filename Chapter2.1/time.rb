require 'date'

# Variables
DAYS_PER_YEAR = 365.25
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTE = 60
MY_BIRTHDAY = DateTime.new(1983, 3, 19)

# Calculate hours in a year
hours_per_year = DAYS_PER_YEAR*HOURS_PER_DAY*MINUTES_PER_HOUR*SECONDS_PER_MINUTE
puts "Hours in a year: " + hours_per_year.to_s

# Calculate minutes in a decade
minutes_per_decade = 10*DAYS_PER_YEAR*HOURS_PER_DAY*MINUTES_PER_HOUR
puts "Minutes in a decade: " + minutes_per_decade.to_s

# Age in seconds
age_seconds = DateTime.now - MY_BIRTHDAY
puts "Age in seconds: " + age_seconds.to_s

# Age from seconds
HIS_AGE_SECONDS = 1160000000
his_age_years = HIS_AGE_SECONDS/SECONDS_PER_MINUTE/MINUTES_PER_HOUR/HOURS_PER_DAY/DAYS_PER_YEAR
puts "His age (years): " + his_age_years.to_s

