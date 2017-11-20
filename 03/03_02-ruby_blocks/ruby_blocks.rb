def array_each(arr, &block_proc)
    return unless block_proc
    limit = arr.length
    for i in 0..(limit -1)
        block_proc.call(arr[i])
    end
end

numbers = [1, 5, 7]
array_each(numbers) do |number|
    puts number
end