$nesting_depth = 0

def log description, &some_proc
  puts '  '*$nesting_depth + "Beginning #{description}..."

  $nesting_depth += 1

  result = some_proc.call

  if result
    puts '  '*$nesting_depth + "Result: #{result}"
  end

  $nesting_depth -= 1

  puts '  '*$nesting_depth + "Done logging #{description}"

end

log 'Outer block' do
  log 'Inner block' do
    'Here is the important part'
  end
end