def say_hello(&block)
	puts "Hello world"
	if block_given?
		block.call
	else
		puts "No block was given."
	end
end

say_hello { puts "Hello again" }

puts "Now without a block given."

say_hello