def do_hours(&block)

  now = Time.new

  now.hour.times do
    block.call
  end

end

do_hours do
  puts 'DONG!'
end
