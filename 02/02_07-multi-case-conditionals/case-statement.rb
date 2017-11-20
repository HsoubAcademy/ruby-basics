user_choice = 'run_file'

case user_choice
when 'exit'
    puts 'program is exiting'
when 'open_file', 'run_file'
    puts 'opening file'
else
    puts 'undefined command'
end