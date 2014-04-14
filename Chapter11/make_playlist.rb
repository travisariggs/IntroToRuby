require 'yaml'

def yaml_save(object, filename)
  File.open(filename, 'w') do |f|
    f.write(object.to_yaml)
  end
end

this_dir = Dir.getwd

data_dir = File.join(this_dir, 'TestData')

# Create a directory of test files
Dir.mkdir(data_dir) unless File.exists? data_dir

(1..12).each { |index|
  File.open(File.join(data_dir, "Test-#{index}.mp3"), 'w') { |f|
    f.write("This is a test line for file number #{index}.")
  }
}

# Get list of files
files = Dir.entries(data_dir)

# Filter out the '.' and '..'
files.select! { |f| File.extname(f) == '.mp3' }

# Shuffle the list of files
files.shuffle!

# Write the playlist in yaml
yaml_save(files, File.join(this_dir, 'playlist.m3u'))

