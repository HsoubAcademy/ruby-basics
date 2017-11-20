cmd = nil

while cmd != 'exit'
  cmd = gets.chomp
  next if cmd.empty?
  case cmd
    when 'ruby'
       puts 'running ruby language...'
    when 'rails'
       puts 'running rails framework'
    when 'exit'
       puts 'exiting'
    when 'php'
       puts 'other languages are not allowed !! exiting !'
       break
    else
       puts 'command not found'
  end
end
