def say_hello(&block)
	puts "Hello world"
	name = block.call
	puts "You entered #{name} as your name."
end

say_hello do 

	puts "Inside of the block nigga."
	"Jason"
	
end