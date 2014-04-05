def say_moo number_of_moos
    puts 'moooooooo....'*number_of_moos
end

def double_this num
    num_times_2 = num*2
    puts num.to_s + ' doubled is ' + num_times_2.to_s
end

say_moo 3
puts 'coin-coin'

double_this 44

def fav_food name
    if name == 'Lister'
        return 'vindaloo'
    elsif name == 'Rimmer'
        return 'mashed potatoes'
    end
    'hard to say...maybe fried plantain?'
end

def fav_drink name
    if name == 'Jean-Luc'
        'tea, Earl Grey, hot'
    elsif name == 'Kathryn'
        'coffee, black'
    else
        'perhaps...horchata?'
    end
end

puts fav_food('Rimmer')
puts fav_food('Lister')
puts fav_food('Cher')
puts fav_drink('Kathryn')
puts fav_drink('Oprah')
puts fav_drink('Jean-Luc')
