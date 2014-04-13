require 'yaml'

test_arr = ['Give Quiche a Chance',
            'Mutants Out!',
            42.7,
            7,
            'Chameleonic Life-Forms, No Thanks']

test_hash = {a: 1, b: 'hello', c: 43.2}

test_string = test_hash.to_yaml
#test_string = test_arr.to_yaml

puts "test_string: #{test_string}"

filename = 'RimmerTShirts.txt'
File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string
puts(read_string == test_string)
puts(read_array == test_arr)
