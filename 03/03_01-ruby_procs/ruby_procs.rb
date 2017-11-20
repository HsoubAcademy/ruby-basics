class MyOperation

    def initialize(output_proc)
        @output_proc = output_proc
    end

    def perform
        # some work
        @output_proc.call "Finished 10%"
        # some other work
        @output_proc.call "Finished 20%"
        # ...
    end
end

my_output_proc = Proc.new { |message| STDOUT.puts message }
MyOperation.new(my_output_proc).perform