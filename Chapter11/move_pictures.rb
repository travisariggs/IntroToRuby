
this_dir = Dir.getwd

data_dir = 'TestData'

# Create a directory of test files

Dir.mkdir(File.join(this_dir, data_dir))

(1..12).each { |index|
  File.open(File.join(this_dir, data_dir, "Test-#{index}.jpg"), 'w') { |f|
    f.write("This is a test line for file number #{index}.")
  }
}

# Rename the batch of files to a new directory
puts "What would you like to call this batch of files?"
batch_name = gets.chomp

# Create new directory
new_dir = File.join(this_dir, batch_name)
Dir.mkdir(new_dir)

# Loop through files in directory and rename them
Dir.foreach(File.join(this_dir, data_dir)) { |file|

  if !['.', '..'].include? file

    puts "Copying #{file}..."

    # Examine the current filename
    extension = File.extname(file)
    basename = file.sub(extension, '')

    # Separate the number from the filename
    base, number = basename.split("-")

    # Create new filename
    new_name = batch_name + "-" + number + extension

    File.rename(File.join(this_dir, data_dir, file),
      File.join(new_dir, new_name))

  end

}

puts "All Done!"
