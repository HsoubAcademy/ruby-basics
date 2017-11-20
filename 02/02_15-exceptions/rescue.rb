begin
    File.read 'my_home_work.txt'
rescue
    puts 'File not found'
end