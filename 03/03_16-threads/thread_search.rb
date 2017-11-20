a = [1, 3, 6, 7, 2, 4, 8, 2, 4]
b = [1, 2, 6, 7, 9, 3, 9, 3, 3]
c = [5, 2, 1, 3, 5, 7, 2, 3, 4]

threads = []

threads << Thread.new do 
    a.find_all {|x| x % 2 == 0}
end

threads << Thread.new do 
    b.find_all {|x| x % 2 == 0}
end

threads << Thread.new do 
    c.find_all {|x| x % 2 == 0}
end


results = threads.map(&:value).flatten

puts results
