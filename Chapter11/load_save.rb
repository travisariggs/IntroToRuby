# The filename doesn't have to end with '.txt', but
#  since it is valid text, why not?

filename = 'ListerQuote.txt'
test_string = 'I promise that I will never' +
              ' mention gazpacho soup again.'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename
puts(read_string == test_string)

