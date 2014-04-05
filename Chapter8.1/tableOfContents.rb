width = 50

title = 'Table of Contents'
line1 = 'Chapter 1:  Getting Started'
page1 = 'page 1'
line2 = 'Chapter 2:  Numbers'
page2 = 'page 9'
line3 = 'Chapter 3:  Letters'
page3 = 'page 13'

titles = [['Table of Contents', '', ''], 
          ['',                  '', ''], 
          ['Gettings Started',  '1', '1'], 
          ['Numbers',           '2', '9'], 
          ['Letters',           '3', '13']]

# Print results of table of contents
titles.each do |label, chapter, page|
    if label == 'Table of Contents'
        puts label.center(width)
    elsif label == ''
        puts
    else label != ''
        line = 'Chapter ' + chapter + ':  ' + label 
        puts line + page.rjust(width - line.length) 
    end
end

# Print results of table of contents
puts title.center(width)
puts ''
puts line1 + page1.rjust(width - line1.length)
puts line2 + page2.rjust(width - line2.length)
puts line3 + page3.rjust(width - line3.length)

