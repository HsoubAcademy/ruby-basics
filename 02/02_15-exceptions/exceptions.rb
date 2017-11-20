def say_hi(to:)
    username = to
    raise "We don't accept numbers as usernames" if username.is_a?(Integer)
    puts "Hi #{username}"
end

say_hi to: 2