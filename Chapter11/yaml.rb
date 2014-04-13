require 'yaml'

def yaml_save(object, filename)
  File.open(filename, 'w') do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load(filename)
  yaml_string = File.read filename
  YAML::load yaml_string
end

test_arr = ['Give Quiche a Chance',
            'Mutants Out!',
            42.7,
            7,
            'Chameleonic Life-Forms, No Thanks']

test_hash = {a: 1, b: 'hello', c: 43.2}

test_string = test_hash.to_yaml
#test_string = test_arr.to_yaml

puts "test_string: #{test_string}"

filename = 'DatasGadgets.txt'

yaml_save(test_arr, filename)

read_array = yaml_load filename

puts(read_array == test_arr)
