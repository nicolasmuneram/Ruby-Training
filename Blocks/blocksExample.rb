class SimpleBenchmarker
    def self.go(how_many=1, &block)
        puts "--------------Benchmarking started------------------"
        start_time = Time.now
        puts "Start Time: \t#{start_time}\n\n"
        how_many.times do |a| #literally "5.times". 5 is sent in as an argument from line 18. a is passed in as a new local variable, but it's not used, but it could be, like 'puts #{a}' would tell you which iteration it is on i.e. 1, 2, 3...etc
            print ". "
            block.call #I think the block is lines 19 and 20
        end
        print "\n\n"
        end_time = Time.now
        puts "End Time:\t#{end_time}\n"
        puts "-------------Benchmarking finished-------------------"
        puts "Result:\t\t#{end_time - start_time} seconds"
    end
end

SimpleBenchmarker.go 5 do #I thought you need brackets () to pass in arguments? The first argument here being '5', and the second one being the block of code?
    time = rand(0.1..1.0)
    print " #{time} "
    sleep time
end