USERNAME_REGEXP = /^[a-zA-Z][a-zA-Z\d]+/
while true
    puts 'Enter username to check'
    username = gets.chomp
    break if username.empty?
    if username =~ USERNAME_REGEXP
        puts 'valid username'
    else
        puts 'invalid username'
    end
end